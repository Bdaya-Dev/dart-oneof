import 'any_of_base.dart';

class AnyOf2<T0, T1> extends AnyOf {
  AnyOf2({
    required this.values,
  });

  T0 get asT0 => values[0] as T0;
  T1 get asT1 => values[1] as T1;

  @override
  List<Type> get types => [T0, T1];

  @override
  final Map<int, Object?> values;
}
