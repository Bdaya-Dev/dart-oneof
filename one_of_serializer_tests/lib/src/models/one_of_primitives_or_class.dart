//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';
import 'package:one_of_serializer_tests/one_of_serializer_tests.dart';
// ignore_for_file: unused_element, unused_import
part 'one_of_primitives_or_class.g.dart';

/// Fruit
///
/// Properties:
@BuiltValue()
abstract class OneOfPrimitivesOrClass
    implements Built<OneOfPrimitivesOrClass, OneOfPrimitivesOrClassBuilder> {
  /// OneOf [String],[Apple]
  OneOf? get oneOf;

  OneOfPrimitivesOrClass._();

  factory OneOfPrimitivesOrClass(
          [void updates(OneOfPrimitivesOrClassBuilder b)]) =
      _$OneOfPrimitivesOrClass;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(OneOfPrimitivesOrClassBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<OneOfPrimitivesOrClass> get serializer =>
      _$OneOfPrimitivesOrClassSerializer();
}

class _$OneOfPrimitivesOrClassSerializer
    implements PrimitiveSerializer<OneOfPrimitivesOrClass> {
  @override
  final Iterable<Type> types = const [
    OneOfPrimitivesOrClass,
    _$OneOfPrimitivesOrClass
  ];

  @override
  final String wireName = r'OneOfPrimitivesOrClass';

  @override
  Object serialize(Serializers serializers, OneOfPrimitivesOrClass object,
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
      //only if all are primitives
      // if (_serialized is Iterable) {
      //   return _serialized.last;
      // }
      return _serialized!;
    }
    throw UnsupportedError("Couldn't serialize oneOf");
    // return result;
  }

  @override
  OneOfPrimitivesOrClass deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final resultB = OneOfPrimitivesOrClassBuilder();

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
            specifiedType: FullType(OneOf, [FullType(String), FullType(Apple)]))
        as OneOf;
    return resultB.build();
  }
}
