import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';
import 'package:one_of_serializer_tests/one_of_serializer_tests.dart';
import 'package:one_of_serializer_tests/src/models/one_of_primitives.dart';
import 'package:test/test.dart';

void main() {
  group('OneOf', () {
    group('as Banana', () {
      final fruitB = FruitBuilder();
      final bananaB = BananaBuilder();
      const fruitS = {
        'color': 'Red',
        'count': 5,
      };
      setUp(() {
        bananaB.count = 5;

        fruitB.color = "Red";
        fruitB.oneOf = OneOfDynamic(
          typeIndex: 1,
          types: [Apple, Banana],
          value: bananaB.build(),
        );
      });

      test('Serialization', () {
        final serialized = standardSerializers.serialize(
          fruitB.build(),
          specifiedType: FullType(Fruit),
        );
        expect(serialized, fruitS);
      });

      test('Deserialization', () {
        final deserialized = standardSerializers.deserialize(
          fruitS,
          specifiedType: FullType(Fruit),
        );
        expect(deserialized, fruitB.build());
      });
    });

    group('as Apple', () {
      final fruitB = FruitBuilder();
      final appleB = AppleBuilder();
      const fruitS = {
        'color': 'Red',
        'kind': 'Local Apple',
      };
      setUp(() {
        appleB.kind = 'Local Apple';

        fruitB.color = "Red";
        fruitB.oneOf = OneOfDynamic(
          typeIndex: 0,
          types: [Apple, Banana],
          value: appleB.build(),
        );
      });

      test('Serialization', () {
        final serialized = standardSerializers.serialize(
          fruitB.build(),
          specifiedType: FullType(Fruit),
        );
        expect(serialized, fruitS);
      });

      test('Deserialization', () {
        final deserialized = standardSerializers.deserialize(
          fruitS,
          specifiedType: FullType(Fruit),
        );
        expect(deserialized, fruitB.build());
      });
    });

    group('OneOf2 as Banana', () {
      final fruitB = FruitBuilder();
      final bananaB = BananaBuilder();
      const fruitS = {
        'color': 'Red',
        'count': 5,
      };
      setUp(() {
        bananaB.count = 5;

        fruitB.color = "Red";
        fruitB.oneOf = OneOf2<Apple, Banana>(
          typeIndex: 1,
          value: bananaB.build(),
        );
      });

      test('Serialization', () {
        final serialized = standardSerializers.serialize(
          fruitB.build(),
          specifiedType: FullType(Fruit),
        );

        expect(serialized, fruitS);
      });

      test('Deserialization', () {
        final deserialized = standardSerializers.deserialize(
          fruitS,
          specifiedType: FullType(Fruit),
        );
        expect(deserialized, fruitB.build());
      });
    });

    group('Primitives', () {
      final obj = OneOfPrimitivesBuilder();

      group('as String (first)', () {
        const strValue = 'Hello world';
        setUp(() {
          obj.oneOf = OneOf2<String, int>(value: strValue, typeIndex: 0);
        });

        test('Serialization', () {
          final serialized = standardSerializers.serialize(
            obj.build(),
            specifiedType: FullType(OneOfPrimitives),
          );
          expect(serialized, strValue);
        });

        test('Deserialization', () {
          final deserialized = standardSerializers.deserialize(
            strValue,
            specifiedType: FullType(OneOfPrimitives),
          );
          expect(deserialized, obj.build());
        });
      });
      group('as int (second)', () {
        const intValue = 21;
        setUp(() {
          obj.oneOf = OneOf2<String, int>(value: intValue, typeIndex: 1);
        });

        test('Serialization', () {
          final serialized = standardSerializers.serialize(
            obj.build(),
            specifiedType: FullType(OneOfPrimitives),
          );
          expect(serialized, intValue);
        });

        test('Deserialization', () {
          final deserialized = standardSerializers.deserialize(
            intValue,
            specifiedType: FullType(OneOfPrimitives),
          );
          expect(deserialized, obj.build());
        });
      });
    });
  });
}
