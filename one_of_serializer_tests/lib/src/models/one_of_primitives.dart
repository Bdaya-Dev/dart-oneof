//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';
// ignore_for_file: unused_element, unused_import
part 'one_of_primitives.g.dart';

/// Fruit
///
/// Properties:
/// * [color]
@BuiltValue()
abstract class OneOfPrimitives
    implements Built<OneOfPrimitives, OneOfPrimitivesBuilder> {
  /// OneOf [String],[int]
  OneOf? get oneOf;

  OneOfPrimitives._();

  factory OneOfPrimitives([void updates(OneOfPrimitivesBuilder b)]) =
      _$OneOfPrimitives;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OneOfPrimitivesBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OneOfPrimitives> get serializer =>
      _$OneOfPrimitivesSerializer();
}

class _$OneOfPrimitivesSerializer
    implements PrimitiveSerializer<OneOfPrimitives> {
  @override
  final Iterable<Type> types = const [OneOfPrimitives, _$OneOfPrimitives];

  @override
  final String wireName = r'OneOfPrimitives';

  @override
  Object serialize(Serializers serializers, OneOfPrimitives object,
      {FullType specifiedType = FullType.unspecified}) {
    // final result = <Object?>[];
    // if (object.color != null) {
    //   result
    //     ..add(r'color')
    //     ..add(serializers.serialize(object.color,
    //         specifiedType: const FullType(String)));
    // }

    final oneOf = object.oneOf;
    if (oneOf != null) {
      final _serialized = serializers.serialize(
        oneOf,
        specifiedType:
            FullType(OneOf, oneOf.types.map((e) => FullType(e)).toList()),
      );
      if (_serialized is Iterable) {
        return _serialized.last;
      }
      return _serialized!;
    }
    throw UnsupportedError("Couldn't serialize oneOf");
    // return result;
  }

  @override
  OneOfPrimitives deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final resultB = OneOfPrimitivesBuilder();

    // final unhandled = <Object?>[];
    // for (var i = 0; i < serializedList.length; i += 2) {
    //   final key = serializedList[i] as String;
    //   final value = serializedList[i + 1];

    //   switch (key) {
    //     // case r'color':
    //     //   final valueDes = serializers.deserialize(value,
    //     //       specifiedType: const FullType(String)) as String;
    //     //   resultB.color = valueDes;
    //     //   break;
    //     default:
    //       unhandled.add(key);
    //       unhandled.add(value);
    //       break;
    //   }
    // }
    resultB.oneOf = serializers.deserialize(serialized,
            specifiedType: FullType(OneOf, [FullType(String), FullType(int)]))
        as OneOf;
    return resultB.build();
  }
}
