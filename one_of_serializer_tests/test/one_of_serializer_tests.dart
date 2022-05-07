import 'package:one_of/one_of.dart';
import 'package:one_of_serializer_tests/one_of_serializer_tests.dart';
import 'package:test/test.dart';

void main() {
  group('OneOf', () {
    group('as Banana', () {
      final fruitB = FruitBuilder();
      final bananaB = BananaBuilder();
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
        final serialized = serializers.serialize(fruitB.build());
        final expected = ['Fruit', 'color', 'Red', 'count', 5];
        expect(serialized, expected);
      });

      test('Deserialization', () {
        final serialized = ['Fruit', 'color', 'Red', 'count', 5];
        final deserialized = serializers.deserialize(serialized);
        expect(deserialized, fruitB.build());
      });
    });

    group('as Apple', () {
      final fruitB = FruitBuilder();
      final appleB = AppleBuilder();
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
        final serialized = serializers.serialize(fruitB.build());
        final expected = ['Fruit', 'color', 'Red', 'kind', 'Local Apple'];
        expect(serialized, expected);
      });

      test('Deserialization', () {
        final serialized = ['Fruit', 'color', 'Red', 'kind', 'Local Apple'];
        final deserialized = serializers.deserialize(serialized);
        expect(deserialized, fruitB.build());
      });
    });

    group('OneOf2 as Banana', () {
      final fruitB = FruitBuilder();
      final bananaB = BananaBuilder();
      setUp(() {
        bananaB.count = 5;

        fruitB.color = "Red";
        fruitB.oneOf = OneOf2<Apple, Banana>(
          typeIndex: 1,
          value: bananaB.build(),
        );
      });

      test('Serialization', () {
        final serialized = serializers.serialize(fruitB.build());
        final expected = ['Fruit', 'color', 'Red', 'count', 5];
        expect(serialized, expected);
      });

      test('Deserialization', () {
        final serialized = ['Fruit', 'color', 'Red', 'count', 5];
        final deserialized = serializers.deserialize(serialized);
        expect(deserialized, fruitB.build());
      });
    });
  });
}
