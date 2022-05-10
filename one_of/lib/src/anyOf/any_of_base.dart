import 'package:collection/collection.dart';
import 'package:quiver/core.dart';

abstract class AnyOf {
  /// the actual values, accepts null
  ///
  /// Maps type index to value
  Map<int, Object?> get values;

  /// all available types to choose from
  List<Type> get types;

  bool get isNull => values.values.every((element) => element == null);

  /// all available types to choose from
  Set<Type> get valueTypes => values.keys.map((e) => types[e]).toSet();

  /// checks if [values] contain the input type index as a key
  bool isTX(int index) => values.containsKey(index);

  /// checks if [valueTypes] contains the input type
  bool isType(Type t) => valueTypes.contains(t);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AnyOf &&
          MapEquality<int, Object?>().equals(values, other.values) &&
          ListEquality<Type>().equals(types, other.types);

  @override
  int get hashCode => hash2(
        MapEquality<int, Object?>().hash(values),
        ListEquality<Type>().hash(types),
      );

  /// returns value.toString()
  @override
  String toString() => values.toString();
}
