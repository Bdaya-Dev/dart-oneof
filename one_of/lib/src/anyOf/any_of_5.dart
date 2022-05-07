import 'any_of_base.dart';

class AnyOf5<T0, T1, T2, T3, T4> extends AnyOf {
  AnyOf5({
    required this.values,
  });

  T0 get asT0 => values[0] as T0;
  T1 get asT1 => values[1] as T1;
  T2 get asT2 => values[2] as T2;
  T3 get asT3 => values[3] as T3;
  T4 get asT4 => values[4] as T4;

  @override
  List<Type> get types => [T0, T1, T2, T3, T4];

  @override
  final Map<int, Object?> values;
}
