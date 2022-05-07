//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'apple.dart';
import 'banana.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';
// ignore_for_file: unused_element, unused_import
part 'fruit_any.g.dart';

/// Fruit
///
/// Properties:
/// * [color]
@BuiltValue()
abstract class FruitAny implements Built<FruitAny, FruitAnyBuilder> {
  @BuiltValueField(wireName: r'color')
  String? get color;

  /// AnyOf [Apple],[Banana]
  AnyOf? get anyOf;

  FruitAny._();

  factory FruitAny([void updates(FruitAnyBuilder b)]) = _$FruitAny;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FruitAnyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FruitAny> get serializer => _$FruitAnySerializer();
}

class _$FruitAnySerializer implements StructuredSerializer<FruitAny> {
  @override
  final Iterable<Type> types = const [FruitAny, _$FruitAny];

  @override
  final String wireName = r'FruitAny';

  @override
  Iterable<Object?> serialize(Serializers serializers, FruitAny object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.color != null) {
      result
        ..add(r'color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(String)));
    }

    final anyOf = object.anyOf;
    if (anyOf != null) {
      final _serialized = serializers.serialize(
        anyOf,
        specifiedType:
            FullType(AnyOf, anyOf.types.map((e) => FullType(e)).toList()),
      );
      if (_serialized is! Map) {
        throw UnsupportedError(
            'Impossible case, maybe not using StandardJsonPlugin');
      }
      for (var e in _serialized.entries) {
        result.add(e.key);
        result.add(e.value);
      }
    }
    return result;
  }

  @override
  FruitAny deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final resultB = FruitAnyBuilder();
    final serializedList = serialized.toList();
    final unhandled = <Object?>[];
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];

      switch (key) {
        case r'color':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          resultB.color = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
    resultB.anyOf = serializers.deserialize(unhandled,
            specifiedType: FullType(AnyOf, [FullType(Apple), FullType(Banana)]))
        as AnyOf;
    return resultB.build();
  }
}
