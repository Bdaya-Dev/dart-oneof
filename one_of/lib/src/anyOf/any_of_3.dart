import 'any_of_base.dart';

class AnyOf3<T0, T1, T2> extends AnyOf {
  AnyOf3({
    required this.values,
  });

  T0 get asT0 => values[0] as T0;
  T1 get asT1 => values[1] as T1;
  T2 get asT2 => values[2] as T2;

  @override
  List<Type> get types => [T0, T1, T2];

  @override
  final Map<int, Object?> values;
}
