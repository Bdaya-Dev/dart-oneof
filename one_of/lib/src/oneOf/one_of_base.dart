import 'package:collection/equality.dart';

import 'one_of_1.dart';
import 'one_of_2.dart';
import 'one_of_3.dart';
import 'one_of_4.dart';
import 'one_of_5.dart';
import 'one_of_6.dart';
import 'one_of_7.dart';
import 'package:quiver/core.dart';

abstract class OneOf {
  /// the actual value, accepts null
  ///
  /// when there are multiple nullable types, the actual type is then determined using [typeIndex]
  Object? get value;

  /// determines where the value type is in the [types] field
  int get typeIndex;

  /// all available types to choose from
  List<Type> get types;

  bool get isNull => value == null;

  /// exact value type
  Type get valueType => types[typeIndex];

  /// checks if [typeIndex] is equal to input index
  bool isTX(int index) => typeIndex == index;

  /// checks if [valueType] is equal to input type
  bool isType(Type t) => valueType == t;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OneOf &&
          ListEquality<Type>().equals(types, other.types) &&
          typeIndex == other.typeIndex &&
          value == other.value;

  @override
  int get hashCode => hash2(value, typeIndex);

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

  static int? _guessTypeIndex({
    int? typeIndex,
    Type? type,
    required Object? value,
    required List<Type> types,
  }) {
    if (typeIndex == null) {
      //try to determine typeIndex by checking type
      if (type != null) {
        final _t = types.indexWhere((t) => t == type);
        if (_t >= 0) {
          typeIndex = _t;
        }
      }
    }
    //Needs optimization, doing it manually for each case is faster than using reflection
    // if (typeIndex == null) {
    //   int _t;
    //   if (value == null) {
    //     _t = types.indexWhere((t) => t == Null);
    //   } else {
    //     final allTypesReflected = types.map((e) => reflectClass(e)).toList();
    //     final reflected = reflect(value);
    //     final reflectedType = reflected.type;
    //     _t = allTypesReflected.indexWhere((t) => reflectedType.isSubtypeOf(t));
    //   }
    //   if (_t >= 0) {
    //     typeIndex = _t;
    //   }
    // }
    return typeIndex;
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
    typeIndex = _guessTypeIndex(
      types: [T0, T1],
      type: type,
      typeIndex: typeIndex,
      value: value,
    );

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
    typeIndex = _guessTypeIndex(
      types: [T0, T1, T2],
      type: type,
      typeIndex: typeIndex,
      value: value,
    );
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
    typeIndex = _guessTypeIndex(
      types: [T0, T1, T2, T3],
      type: type,
      typeIndex: typeIndex,
      value: value,
    );
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

  static OneOf5<T0, T1, T2, T3, T4> fromValue5<T0, T1, T2, T3, T4>({
    required Object? value,
    int? typeIndex,
    Type? type,
  }) {
    typeIndex = _guessTypeIndex(
      types: [T0, T1, T2, T3, T4],
      type: type,
      typeIndex: typeIndex,
      value: value,
    );
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
      } else if (value is T4) {
        typeIndex = 4;
      }
    }
    _throwIfFailedAttempt(typeIndex);
    return OneOf5(value: value, typeIndex: typeIndex!);
  }

  static OneOf6<T0, T1, T2, T3, T4, T5> fromValue6<T0, T1, T2, T3, T4, T5>({
    required Object? value,
    int? typeIndex,
    Type? type,
  }) {
    typeIndex = _guessTypeIndex(
      types: [T0, T1, T2, T3, T4, T5],
      type: type,
      typeIndex: typeIndex,
      value: value,
    );
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
      } else if (value is T4) {
        typeIndex = 4;
      } else if (value is T5) {
        typeIndex = 5;
      }
    }
    _throwIfFailedAttempt(typeIndex);
    return OneOf6(value: value, typeIndex: typeIndex!);
  }

  static OneOf7<T0, T1, T2, T3, T4, T5, T6>
      fromValue7<T0, T1, T2, T3, T4, T5, T6>({
    required Object? value,
    int? typeIndex,
    Type? type,
  }) {
    typeIndex = _guessTypeIndex(
      types: [T0, T1, T2, T3, T4, T5, T6],
      type: type,
      typeIndex: typeIndex,
      value: value,
    );
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
      } else if (value is T4) {
        typeIndex = 4;
      } else if (value is T5) {
        typeIndex = 5;
      } else if (value is T6) {
        typeIndex = 6;
      }
    }
    _throwIfFailedAttempt(typeIndex);
    return OneOf7(value: value, typeIndex: typeIndex!);
  }
}
