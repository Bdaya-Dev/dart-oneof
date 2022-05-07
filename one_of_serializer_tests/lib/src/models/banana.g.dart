// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banana.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Banana> _$bananaSerializer = new _$BananaSerializer();

class _$BananaSerializer implements StructuredSerializer<Banana> {
  @override
  final Iterable<Type> types = const [Banana, _$Banana];
  @override
  final String wireName = 'Banana';

  @override
  Iterable<Object?> serialize(Serializers serializers, Banana object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'count',
      serializers.serialize(object.count, specifiedType: const FullType(num)),
    ];

    return result;
  }

  @override
  Banana deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BananaBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'count':
          result.count = serializers.deserialize(value,
              specifiedType: const FullType(num))! as num;
          break;
      }
    }

    return result.build();
  }
}

class _$Banana extends Banana {
  @override
  final num count;

  factory _$Banana([void Function(BananaBuilder)? updates]) =>
      (new BananaBuilder()..update(updates)).build();

  _$Banana._({required this.count}) : super._() {
    BuiltValueNullFieldError.checkNotNull(count, 'Banana', 'count');
  }

  @override
  Banana rebuild(void Function(BananaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BananaBuilder toBuilder() => new BananaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Banana && count == other.count;
  }

  @override
  int get hashCode {
    return $jf($jc(0, count.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Banana')..add('count', count))
        .toString();
  }
}

class BananaBuilder implements Builder<Banana, BananaBuilder> {
  _$Banana? _$v;

  num? _count;
  num? get count => _$this._count;
  set count(num? count) => _$this._count = count;

  BananaBuilder() {
    Banana._defaults(this);
  }

  BananaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _count = $v.count;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Banana other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Banana;
  }

  @override
  void update(void Function(BananaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Banana build() {
    final _$result = _$v ??
        new _$Banana._(
            count: BuiltValueNullFieldError.checkNotNull(
                count, 'Banana', 'count'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
