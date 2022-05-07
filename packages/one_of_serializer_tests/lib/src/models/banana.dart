//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
// ignore_for_file: unused_element, unused_import

part 'banana.g.dart';

/// Banana
///
/// Properties:
/// * [count]
@BuiltValue()
abstract class Banana implements Built<Banana, BananaBuilder> {
  @BuiltValueField(wireName: r'count')
  num get count;

  Banana._();

  factory Banana([void updates(BananaBuilder b)]) = _$Banana;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(BananaBuilder b) => b;

  @BuiltValueSerializer(custom: false)
  static Serializer<Banana> get serializer => _$bananaSerializer;
}
