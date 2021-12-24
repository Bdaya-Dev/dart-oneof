import 'one_of_1.dart';

import 'one_of_2.dart';

abstract class OneOfBase {
  /// the actual value, accepts null
  ///
  /// when there are multiple nullable types, the actual type is then determined using [typeIndex]
  Object? get value;

  int get typeIndex;

  List<Type> get types;

  Type get valueType => types[typeIndex];

  static void _throwIfInvalidInput(Object? value, int? typeIndex) {
    assert(value == null && typeIndex == null,
        'Either enter a non-null value, or provide a typeIndex');
  }

  static OneOf1<T0> fromValue1<T0>({required T0 value}) {
    return OneOf1(value: value);
  }

  static OneOf2<T0, T1> fromValue2<T0, T1>({
    required Object? value,
    int? typeIndex,
  }) {
    if (typeIndex == null) {
      //try to determine typeIndex by checking value type
      if (value is T0) {
        typeIndex = 0;
      } else if (value is T1) {
        typeIndex = 1;
      }
    }
    _throwIfInvalidInput(value, typeIndex);
    return OneOf2(value: value, typeIndex: typeIndex!);
  }
}
