// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_of_primitives.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OneOfPrimitives extends OneOfPrimitives {
  @override
  final OneOf? oneOf;

  factory _$OneOfPrimitives([void Function(OneOfPrimitivesBuilder)? updates]) =>
      (new OneOfPrimitivesBuilder()..update(updates)).build();

  _$OneOfPrimitives._({this.oneOf}) : super._();

  @override
  OneOfPrimitives rebuild(void Function(OneOfPrimitivesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OneOfPrimitivesBuilder toBuilder() =>
      new OneOfPrimitivesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OneOfPrimitives && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    return $jf($jc(0, oneOf.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OneOfPrimitives')..add('oneOf', oneOf))
        .toString();
  }
}

class OneOfPrimitivesBuilder
    implements Builder<OneOfPrimitives, OneOfPrimitivesBuilder> {
  _$OneOfPrimitives? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  OneOfPrimitivesBuilder() {
    OneOfPrimitives._defaults(this);
  }

  OneOfPrimitivesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OneOfPrimitives other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OneOfPrimitives;
  }

  @override
  void update(void Function(OneOfPrimitivesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OneOfPrimitives build() {
    final _$result = _$v ?? new _$OneOfPrimitives._(oneOf: oneOf);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
