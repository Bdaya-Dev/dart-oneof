import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';
import 'package:one_of_serializer_tests/one_of_serializer_tests.dart';
import 'package:test/test.dart';

void main() {
  group('AnyOf', () {
    group('as Banana', () {
      final fruitB = FruitAnyBuilder();
      final bananaB = BananaBuilder();
      const fruitS = {
        'color': 'Red',
        'count': 5,
      };

      setUp(() {
        bananaB.count = 5;

        fruitB.color = "Red";
        fruitB.anyOf = AnyOfDynamic(
          values: {1: bananaB.build()},
          types: [Apple, Banana],
        );
      });

      test('Serialization', () {
        final serialized = standardSerializers.serialize(
          fruitB.build(),
          specifiedType: FullType(FruitAny),
        );
        expect(serialized, fruitS);
      });

      test('Deserialization', () {
        final deserialized = standardSerializers.deserialize(
          fruitS,
          specifiedType: FullType(FruitAny),
        );
        expect(deserialized, fruitB.build());
      });
    });

    group('as Apple', () {
      final fruitB = FruitAnyBuilder();
      final appleB = AppleBuilder();
      const fruitS = {
        'color': 'Red',
        'kind': 'Local Apple',
      };
      setUp(() {
        appleB.kind = 'Local Apple';

        fruitB.color = "Red";
        fruitB.anyOf = AnyOfDynamic(
          types: [Apple, Banana],
          values: {0: appleB.build()},
        );
      });

      test('Serialization', () {
        final serialized = standardSerializers.serialize(
          fruitB.build(),
          specifiedType: FullType(FruitAny),
        );
        expect(serialized, fruitS);
      });

      test('Deserialization', () {
        final deserialized = standardSerializers.deserialize(
          fruitS,
          specifiedType: FullType(FruitAny),
        );
        expect(deserialized, fruitB.build());
      });
    });

    group('AnyOf2 as Banana', () {
      final fruitB = FruitAnyBuilder();
      final bananaB = BananaBuilder();
      const fruitS = {
        'color': 'Red',
        'count': 5,
      };

      setUp(() {
        bananaB.count = 5;

        fruitB.color = "Red";
        fruitB.anyOf = AnyOf2<Apple, Banana>(
          values: {1: bananaB.build()},
        );
      });

      test('Serialization', () {
        final serialized = standardSerializers.serialize(
          fruitB.build(),
          specifiedType: FullType(FruitAny),
        );
        expect(serialized, fruitS);
      });

      test('Deserialization', () {
        final deserialized = standardSerializers.deserialize(
          fruitS,
          specifiedType: FullType(FruitAny),
        );
        expect(deserialized, fruitB.build());
      });
    });

    group('AnyOf2 as Banana and Apple', () {
      final fruitB = FruitAnyBuilder();
      final bananaB = BananaBuilder();
      final appleB = AppleBuilder();
      const fruitS = {
        'color': 'Red',
        'kind': 'Remote Apple',
        'count': 10,
      };

      setUp(() {
        bananaB.count = 10;
        appleB.kind = 'Remote Apple';
        fruitB.color = "Red";
        fruitB.anyOf = AnyOf2<Apple, Banana>(
          values: {
            0: appleB.build(),
            1: bananaB.build(),
          },
        );
      });

      test('Serialization', () {
        final serialized = standardSerializers.serialize(
          fruitB.build(),
          specifiedType: FullType(FruitAny),
        );

        expect(serialized, fruitS);
      });

      test('Deserialization', () {
        final deserialized = standardSerializers.deserialize(
          fruitS,
          specifiedType: FullType(FruitAny),
        );
        expect(deserialized, fruitB.build());
      });
    });
  });
}
