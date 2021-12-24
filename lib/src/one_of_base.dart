import 'one_of_1.dart';

import 'one_of_2.dart';
import 'one_of_3.dart';
import 'one_of_4.dart';

abstract class OneOf {
  /// the actual value, accepts null
  ///
  /// when there are multiple nullable types, the actual type is then determined using [typeIndex]
  Object? get value;

  /// determines where the value type is in the [types] field
  int get typeIndex;

  /// all available types to choose from
  List<Type> get types;

  /// all available types to choose from
  Type get valueType => types[typeIndex];

  /// checks if [typeIndex] is equal to input index
  bool isTX(int index) => typeIndex == index;

  /// checks if [valueType] is equal to input type
  bool isType(Type t) => valueType == t;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf &&
          //this ensures the same type parameters, which means the same typeIndex
          //unless types extending each other are used, which is a problem left for the implementer
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  int get hashCode => value.hashCode;

  /// returns value.toString()
  @override
  String toString() => value.toString();

  static void _throwIfFailedAttempt(int? typeIndex) {
    if (typeIndex == null) {
      throw ArgumentError.value(
        typeIndex,
        "typeIndex wasn't provided, and attempts to discover it failed",
      );
    }
  }

  //constructors
  static OneOf1<T0> fromValue1<T0>({required T0 value}) {
    return OneOf1(value: value);
  }

  static OneOf2<T0, T1> fromValue2<T0, T1>({
    required Object? value,
    int? typeIndex,
    Type? type,
  }) {
    if (typeIndex == null) {
      //try to determine typeIndex by checking type
      if (type != null) {
        if (type == T0) {
          typeIndex = 0;
        } else if (type == T1) {
          typeIndex = 1;
        }
      }
    }
    if (typeIndex == null) {
      //try to determine typeIndex by checking value type
      if (value is T0) {
        typeIndex = 0;
      } else if (value is T1) {
        typeIndex = 1;
      }
    }
    _throwIfFailedAttempt(typeIndex);
    return OneOf2(value: value, typeIndex: typeIndex!);
  }

  static OneOf3<T0, T1, T2> fromValue3<T0, T1, T2>({
    required Object? value,
    int? typeIndex,
    Type? type,
  }) {
    if (typeIndex == null) {
      //try to determine typeIndex by checking type
      if (type != null) {
        if (type == T0) {
          typeIndex = 0;
        } else if (type == T1) {
          typeIndex = 1;
        } else if (type == T2) {
          typeIndex = 2;
        }
      }
    }
    if (typeIndex == null) {
      //try to determine typeIndex by checking value type
      if (value is T0) {
        typeIndex = 0;
      } else if (value is T1) {
        typeIndex = 1;
      } else if (value is T2) {
        typeIndex = 2;
      }
    }
    _throwIfFailedAttempt(typeIndex);
    return OneOf3(value: value, typeIndex: typeIndex!);
  }

  static OneOf4<T0, T1, T2, T3> fromValue4<T0, T1, T2, T3>({
    required Object? value,
    int? typeIndex,
    Type? type,
  }) {
    if (typeIndex == null) {
      //try to determine typeIndex by checking type
      if (type != null) {
        if (type == T0) {
          typeIndex = 0;
        } else if (type == T1) {
          typeIndex = 1;
        } else if (type == T2) {
          typeIndex = 2;
        } else if (type == T3) {
          typeIndex = 3;
        }
      }
    }
    if (typeIndex == null) {
      //try to determine typeIndex by checking value type
      if (value is T0) {
        typeIndex = 0;
      } else if (value is T1) {
        typeIndex = 1;
      } else if (value is T2) {
        typeIndex = 2;
      } else if (value is T3) {
        typeIndex = 3;
      }
    }
    _throwIfFailedAttempt(typeIndex);
    return OneOf4(value: value, typeIndex: typeIndex!);
  }
}
