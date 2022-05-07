import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';

class OneOfSerializer implements PrimitiveSerializer<OneOf> {
  const OneOfSerializer();

  @override
  Iterable<Type> get types => [
        OneOf,
        OneOfDynamic,
        OneOf1,
        OneOf2,
        OneOf3,
        OneOf4,
        OneOf5,
        OneOf6,
        OneOf7
      ];

  @override
  String get wireName => 'OneOf';

  @override
  OneOf deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    //deserialize the object without knowing the type
    final types = specifiedType.parameters.map((e) => e.root!).toList();
    if (specifiedType.parameters.isEmpty) {
      throw UnsupportedError('Provide possible types in parameters');
    }

    Object? value;
    int? typeIndex;
    final matches = <int>{};
    for (var i = 0; i < specifiedType.parameters.length; i++) {
      final type = specifiedType.parameters[i];
      try {
        //stop on the first occurance
        value = serializers.deserialize(serialized, specifiedType: type);
        typeIndex = i;
        matches.add(i);
      } catch (e) {
        continue;
      }
    }

    if (matches.length > 1) {
      throw UnsupportedError(
          'more than one match found: ${matches.map((e) => specifiedType.parameters[e])}');
    }
    if (typeIndex == null) {
      throw UnsupportedError(
          'failed to deserialize to any of the provided types: $specifiedType');
    }
    return OneOfDynamic(
      types: types,
      value: value,
      typeIndex: typeIndex,
    );
  }

  @override
  Object serialize(Serializers serializers, OneOf object,
      {FullType specifiedType = FullType.unspecified}) {
    //serialize the value
    final valueSerialized = serializers.serialize(object.value);
    if (valueSerialized is Iterable) {
      //was a json object, skip first element
      return valueSerialized.skip(1);
    }
    return valueSerialized!;
  }
}
