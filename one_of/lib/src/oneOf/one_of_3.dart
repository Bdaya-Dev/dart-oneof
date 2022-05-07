import 'one_of_base.dart';

class OneOf3<T0, T1, T2> extends OneOf {
  OneOf3({
    required this.value,
    required this.typeIndex,
  });

  @override
  final int typeIndex;

  T0 get asT0 => value as T0;
  T1 get asT1 => value as T1;
  T2 get asT2 => value as T2;

  @override
  List<Type> get types => [T0, T1, T2];

  @override
  final Object? value;
}
