import 'package:one_of/one_of.dart';
import 'package:test/test.dart';

class ClassA {}

class ClassB implements ClassA {}

class ClassC implements ClassA {}

void main() {
  group('Test construction success', () {
    test('1', () {
      final value = 5;
      final res = OneOf.fromValue1(value: value);
      expect(res.typeIndex, 0);
      expect(res.types, [int]);
      expect(res.valueType, int);
    });
    test('2', () {
      final value = 5; //int
      final res = OneOf.fromValue2<String, num>(
          value: value); //note that num works, because int extends num
      expect(res.typeIndex, 1);
      expect(res.types, [String, num]);
      expect(res.valueType, num);
    });
    test('3', () {
      final value = 'hi';
      final res = OneOf.fromValue3<String, num, DateTime>(value: value);
      expect(res.typeIndex, 0);
      expect(res.types, [String, num, DateTime]);
      expect(res.valueType, String);
    });
    test('4', () {
      final value = 'hi';
      final res = OneOf.fromValue4<ClassA, num, DateTime, String>(value: value);
      expect(res.typeIndex, 3);
      expect(res.types, [ClassA, num, DateTime, String]);
      expect(res.valueType, String);
    });

    //to get correct behavior, child classes must come before parent classes, however this is not enforced
    //GOOD: child,child,child,...,parent
    //BAD: parent,child,child,...,child
    test('inheritance GOOD', () {
      final value = ClassB();

      final res = OneOf.fromValue3<ClassC, ClassB, ClassA>(value: value);
      expect(res.typeIndex, 1);
      expect(res.types, [ClassC, ClassB, ClassA]);
      expect(res.valueType, ClassB);
    });
    test('inheritance BAD', () {
      final value = ClassB();

      final res = OneOf.fromValue3<ClassA, ClassC, ClassB>(value: value);
      //since value is ClassA is true, res will match ClassA instead of the correct ClassB
      expect(res.typeIndex, 0);
      expect(res.types, [ClassA, ClassC, ClassB]);
      expect(res.valueType, ClassA);
    });

    test('inheritance BAD - Workaround', () {
      final value = ClassB();

      final res =
          OneOf.fromValue3<ClassA, ClassC, ClassB>(value: value, type: ClassB);

      //you can workaround the bad behavior by specifying the type
      expect(res.typeIndex, 2);
      expect(res.types, [ClassA, ClassC, ClassB]);
      expect(res.valueType, ClassB);

      //specifying typeIndex also works
      final res2 =
          OneOf.fromValue3<ClassA, ClassC, ClassB>(value: value, typeIndex: 2);
      expect(res2, equals(res));
    });
    test('Nulls are acceptable, if you write them in the type parameters', () {
      final String? value = null;
      // ignore: prefer_void_to_null
      final res = OneOf.fromValue4<String, num, DateTime, Null>(
        value: value,
      );
      expect(res.typeIndex, 3);
      //there is no way in dart to get a nullable Type instance
      // expect(res.types, [String?, num, DateTime]);
      // expect(res.valueType, String?);
    });
  });

  group('Test construction fails', () {
    test(
        'Test ArgumentError when type is not resolvable due to type not getting entered',
        () {
      final value = 'hi';
      expect(
        () => OneOf.fromValue3<ClassA, num, DateTime>(value: value),
        throwsArgumentError,
      );
    });
    test('Test ArgumentError when type is not resolvable due to nullability',
        () {
      final String? value = null;
      expect(
        () => OneOf.fromValue3<String, num, DateTime>(value: value),
        throwsArgumentError,
      );
    });
    test('Test Nullable casting', () {
      final String? value = null;
      final res =
          OneOf.fromValue3<String, num, DateTime>(value: value, typeIndex: 0);
      expect(res.typeIndex, 0);
      expect(
        () => res.asT0,
        throwsA(isA<TypeError>()),
      );
    });
  });

  // group('test nesting', () {
  //   test('3 nested', () {
  //     final value = Int8List.fromList([10, 20]);

  //     final res = OneOf.fromValue3<String, num, OneOf2<DateTime, Int8List>>(
  //         value: value);
  //     expect(res.typeIndex, 0);
  //     expect(res.types, [String, num, DateTime]);
  //     expect(res.valueType, String);
  //   });
  // });
}
