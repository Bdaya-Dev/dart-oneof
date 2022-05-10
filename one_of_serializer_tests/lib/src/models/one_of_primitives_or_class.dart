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
    final oneOf = object.oneOf;
    if (oneOf != null) {
      final _serialized = serializers.serialize(
        oneOf,
        specifiedType:
            FullType(OneOf, oneOf.types.map((e) => FullType(e)).toList()),
      );
      return _serialized!;
    }
    throw UnsupportedError("Couldn't serialize oneOf");
    // return result;
  }

  @override
  OneOfPrimitivesOrClass deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final resultB = OneOfPrimitivesOrClassBuilder();
    resultB.oneOf = serializers.deserialize(serialized,
            specifiedType: FullType(OneOf, [FullType(String), FullType(Apple)]))
        as OneOf;
    return resultB.build();
  }
}
