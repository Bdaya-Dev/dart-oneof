// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit_any.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FruitAny extends FruitAny {
  @override
  final String? color;
  @override
  final AnyOf? anyOf;

  factory _$FruitAny([void Function(FruitAnyBuilder)? updates]) =>
      (new FruitAnyBuilder()..update(updates)).build();

  _$FruitAny._({this.color, this.anyOf}) : super._();

  @override
  FruitAny rebuild(void Function(FruitAnyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FruitAnyBuilder toBuilder() => new FruitAnyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FruitAny && color == other.color && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, color.hashCode), anyOf.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FruitAny')
          ..add('color', color)
          ..add('anyOf', anyOf))
        .toString();
  }
}

class FruitAnyBuilder implements Builder<FruitAny, FruitAnyBuilder> {
  _$FruitAny? _$v;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  FruitAnyBuilder() {
    FruitAny._defaults(this);
  }

  FruitAnyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _color = $v.color;
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FruitAny other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FruitAny;
  }

  @override
  void update(void Function(FruitAnyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FruitAny build() {
    final _$result = _$v ?? new _$FruitAny._(color: color, anyOf: anyOf);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
