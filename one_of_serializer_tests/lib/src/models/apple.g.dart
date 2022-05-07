// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apple.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Apple> _$appleSerializer = new _$AppleSerializer();

class _$AppleSerializer implements StructuredSerializer<Apple> {
  @override
  final Iterable<Type> types = const [Apple, _$Apple];
  @override
  final String wireName = 'Apple';

  @override
  Iterable<Object?> serialize(Serializers serializers, Apple object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'kind',
      serializers.serialize(object.kind, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Apple deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'kind':
          result.kind = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Apple extends Apple {
  @override
  final String kind;

  factory _$Apple([void Function(AppleBuilder)? updates]) =>
      (new AppleBuilder()..update(updates)).build();

  _$Apple._({required this.kind}) : super._() {
    BuiltValueNullFieldError.checkNotNull(kind, 'Apple', 'kind');
  }

  @override
  Apple rebuild(void Function(AppleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppleBuilder toBuilder() => new AppleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Apple && kind == other.kind;
  }

  @override
  int get hashCode {
    return $jf($jc(0, kind.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Apple')..add('kind', kind)).toString();
  }
}

class AppleBuilder implements Builder<Apple, AppleBuilder> {
  _$Apple? _$v;

  String? _kind;
  String? get kind => _$this._kind;
  set kind(String? kind) => _$this._kind = kind;

  AppleBuilder() {
    Apple._defaults(this);
  }

  AppleBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Apple other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Apple;
  }

  @override
  void update(void Function(AppleBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Apple build() {
    final _$result = _$v ??
        new _$Apple._(
            kind: BuiltValueNullFieldError.checkNotNull(kind, 'Apple', 'kind'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
