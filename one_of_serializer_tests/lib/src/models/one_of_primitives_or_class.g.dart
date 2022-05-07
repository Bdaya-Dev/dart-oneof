// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'one_of_primitives_or_class.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$OneOfPrimitivesOrClass extends OneOfPrimitivesOrClass {
  @override
  final OneOf? oneOf;

  factory _$OneOfPrimitivesOrClass(
          [void Function(OneOfPrimitivesOrClassBuilder)? updates]) =>
      (new OneOfPrimitivesOrClassBuilder()..update(updates)).build();

  _$OneOfPrimitivesOrClass._({this.oneOf}) : super._();

  @override
  OneOfPrimitivesOrClass rebuild(
          void Function(OneOfPrimitivesOrClassBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OneOfPrimitivesOrClassBuilder toBuilder() =>
      new OneOfPrimitivesOrClassBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OneOfPrimitivesOrClass && oneOf == other.oneOf;
  }

  @override
  int get hashCode {
    return $jf($jc(0, oneOf.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OneOfPrimitivesOrClass')
          ..add('oneOf', oneOf))
        .toString();
  }
}

class OneOfPrimitivesOrClassBuilder
    implements Builder<OneOfPrimitivesOrClass, OneOfPrimitivesOrClassBuilder> {
  _$OneOfPrimitivesOrClass? _$v;

  OneOf? _oneOf;
  OneOf? get oneOf => _$this._oneOf;
  set oneOf(OneOf? oneOf) => _$this._oneOf = oneOf;

  OneOfPrimitivesOrClassBuilder() {
    OneOfPrimitivesOrClass._defaults(this);
  }

  OneOfPrimitivesOrClassBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _oneOf = $v.oneOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OneOfPrimitivesOrClass other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OneOfPrimitivesOrClass;
  }

  @override
  void update(void Function(OneOfPrimitivesOrClassBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OneOfPrimitivesOrClass build() {
    final _$result = _$v ?? new _$OneOfPrimitivesOrClass._(oneOf: oneOf);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
