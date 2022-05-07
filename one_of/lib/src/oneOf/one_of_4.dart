import 'one_of_base.dart';

class OneOf4<T0, T1, T2, T3> extends OneOf {
  OneOf4({
    required this.value,
    required this.typeIndex,
  });

  @override
  final int typeIndex;

  T0 get asT0 => value as T0;
  T1 get asT1 => value as T1;
  T2 get asT2 => value as T2;
  T3 get asT3 => value as T3;

  @override
  List<Type> get types => [T0, T1, T2, T3];

  @override
  final Object? value;
}
