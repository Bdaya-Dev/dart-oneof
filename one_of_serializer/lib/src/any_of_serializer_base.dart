import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

class AnyOfSerializer implements PrimitiveSerializer<AnyOf> {
  const AnyOfSerializer();

  @override
  Iterable<Type> get types => [
        AnyOf,
        AnyOfDynamic,
        AnyOf1,
        AnyOf2,
        AnyOf3,
        AnyOf4,
        AnyOf5,
        AnyOf6,
        AnyOf7
      ];

  @override
  String get wireName => 'OneOf';

  @override
  AnyOf deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    //deserialize the object without knowing the type
    final types = specifiedType.parameters.map((e) => e.root!).toList();
    if (specifiedType.parameters.isEmpty) {
      throw UnsupportedError('Provide possible types in parameters');
    }

    final values = <int, Object?>{};

    for (var i = 0; i < specifiedType.parameters.length; i++) {
      final type = specifiedType.parameters[i];
      try {
        final _v = serializers.deserialize(serialized, specifiedType: type);
        values[i] = _v;
      } catch (e) {
        continue;
      }
    }

    if (values.isEmpty) {
      throw UnsupportedError(
          'failed to deserialize to any of the provided types: $specifiedType');
    }
    return AnyOfDynamic(
      types: types,
      values: values,
    );
  }

  @override
  Object serialize(Serializers serializers, AnyOf object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    //serialize the values
    for (var valueEntry in object.values.entries) {
      final typeIndex = valueEntry.key;
      final type = object.types[typeIndex];
      final value = valueEntry.value;

      final serialized = serializers.serialize(value);
      if (serialized is Iterable) {
        result.addAll(serialized.skip(1));
      } else {
        //primitive, return it
        return serialized!;
      }
    }
    return result;
  }
}
