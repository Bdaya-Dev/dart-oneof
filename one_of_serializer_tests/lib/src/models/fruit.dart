//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'apple.dart';
import 'banana.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';
// ignore_for_file: unused_element, unused_import
part 'fruit.g.dart';

/// Fruit
///
/// Properties:
/// * [color]
@BuiltValue()
abstract class Fruit implements Built<Fruit, FruitBuilder> {
  @BuiltValueField(wireName: r'color')
  String? get color;

  /// OneOf [Apple],[Banana]
  OneOf? get oneOf;

  Fruit._();

  factory Fruit([void updates(FruitBuilder b)]) = _$Fruit;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FruitBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Fruit> get serializer => _$FruitSerializer();
}

class _$FruitSerializer implements StructuredSerializer<Fruit> {
  @override
  final Iterable<Type> types = const [Fruit, _$Fruit];

  @override
  final String wireName = r'Fruit';

  @override
  Iterable<Object?> serialize(Serializers serializers, Fruit object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    if (object.color != null) {
      result
        ..add(r'color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(String)));
    }

    final oneOf = object.oneOf;
    if (oneOf != null) {
      final _serialized = serializers.serialize(
        oneOf,
        specifiedType:
            FullType(OneOf, oneOf.types.map((e) => FullType(e)).toList()),
      );
      //serialized MUST be map, since Fruit is a json object, not a primitive
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
  Fruit deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final resultB = FruitBuilder();
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
    resultB.oneOf = serializers.deserialize(unhandled,
            specifiedType: FullType(OneOf, [FullType(Apple), FullType(Banana)]))
        as OneOf;
    return resultB.build();
  }
}
