//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
// ignore_for_file: unused_element, unused_import

part 'apple.g.dart';

/// Apple
///
/// Properties:
/// * [kind]
@BuiltValue()
abstract class Apple implements Built<Apple, AppleBuilder> {
  @BuiltValueField(wireName: r'kind')
  String get kind;

  Apple._();

  factory Apple([void updates(AppleBuilder b)]) = _$Apple;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AppleBuilder b) => b;

  @BuiltValueSerializer(custom: false)
  static Serializer<Apple> get serializer => _$appleSerializer;
}
