// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fruit.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Fruit extends Fruit {
  @override
  final String? color;
  @override
  final OneOf? oneOf;

  factory _$Fruit([void Function(FruitBuilder)? updates]) =>
      (new FruitBuilder()..update(updates)).build();

  _$Fruit._({this.color, this.oneOf}) : super._();

  @override
  Fruit rebuild(void Function(FruitBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FruitBuilder toBuilder() => new FruitBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Fruit && color == other.color && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, color.hashCode), oneOf.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Fruit')
          ..add('color', color)
          ..add('oneOf', oneOf))
        .toString();
  }
}

class FruitBuilder implements Builder<Fruit, FruitBuilder> {
  _$Fruit? _$v;

  String? _color;
  String? get color => _$this._color;
  set color(String? color) => _$this._color = color;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  FruitBuilder() {
    Fruit._defaults(this);
  }

  FruitBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _color = $v.color;
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Fruit other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Fruit;
  }

  @override
  void update(void Function(FruitBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Fruit build() {
    final _$result = _$v ?? new _$Fruit._(color: color, oneOf: oneOf);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
