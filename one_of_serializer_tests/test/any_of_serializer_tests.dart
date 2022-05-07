import 'package:one_of/any_of.dart';
import 'package:one_of_serializer_tests/one_of_serializer_tests.dart';
import 'package:test/test.dart';

void main() {
  group('AnyOf', () {
    group('as Banana', () {
      final fruitB = FruitAnyBuilder();
      final bananaB = BananaBuilder();
      setUp(() {
        bananaB.count = 5;

        fruitB.color = "Red";
        fruitB.anyOf = AnyOfDynamic(
          values: {1: bananaB.build()},
          types: [Apple, Banana],
        );
      });

      test('Serialization', () {
        final serialized = serializers.serialize(fruitB.build());
        final expected = ['FruitAny', 'color', 'Red', 'count', 5];
        expect(serialized, expected);
      });

      test('Deserialization', () {
        final serialized = ['FruitAny', 'color', 'Red', 'count', 5];
        final deserialized = serializers.deserialize(serialized);
        expect(deserialized, fruitB.build());
      });
    });

    group('as Apple', () {
      final fruitB = FruitAnyBuilder();
      final appleB = AppleBuilder();
      setUp(() {
        appleB.kind = 'Local Apple';

        fruitB.color = "Red";
        fruitB.anyOf = AnyOfDynamic(
          types: [Apple, Banana],
          values: {0: appleB.build()},
        );
      });

      test('Serialization', () {
        final serialized = serializers.serialize(fruitB.build());
        final expected = ['FruitAny', 'color', 'Red', 'kind', 'Local Apple'];
        expect(serialized, expected);
      });

      test('Deserialization', () {
        final serialized = ['FruitAny', 'color', 'Red', 'kind', 'Local Apple'];
        final deserialized = serializers.deserialize(serialized);
        expect(deserialized, fruitB.build());
      });
    });

    group('AnyOf2 as Banana', () {
      final fruitB = FruitAnyBuilder();
      final bananaB = BananaBuilder();
      setUp(() {
        bananaB.count = 5;

        fruitB.color = "Red";
        fruitB.anyOf = AnyOf2<Apple, Banana>(
          values: {1: bananaB.build()},
        );
      });

      test('Serialization', () {
        final serialized = serializers.serialize(fruitB.build());
        final expected = ['FruitAny', 'color', 'Red', 'count', 5];
        expect(serialized, expected);
      });

      test('Deserialization', () {
        final serialized = ['FruitAny', 'color', 'Red', 'count', 5];
        final deserialized = serializers.deserialize(serialized);
        expect(deserialized, fruitB.build());
      });
    });

    group('AnyOf2 as Banana and Apple', () {
      final fruitB = FruitAnyBuilder();
      final bananaB = BananaBuilder();
      final appleB = AppleBuilder();
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
        final serialized = serializers.serialize(fruitB.build());
        final expected = [
          'FruitAny',
          'color',
          'Red',
          'kind',
          'Remote Apple',
          'count',
          10
        ];
        expect(serialized, expected);
      });

      test('Deserialization', () {
        final serialized = [
          'FruitAny',
          'color',
          'Red',
          'kind',
          'Remote Apple',
          'count',
          10
        ];
        final deserialized = serializers.deserialize(serialized);
        expect(deserialized, fruitB.build());
      });
    });
  });
}
