import 'one_of_base.dart';

class OneOf2<T0, T1> extends OneOf {
  OneOf2({
    required this.value,
    required this.typeIndex,
  });

  @override
  final int typeIndex;

  T0 get asT0 => value as T0;
  T1 get asT1 => value as T1;

  @override
  List<Type> get types => [T0, T1];

  @override
  final Object? value;
}
