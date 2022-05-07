import 'one_of_base.dart';

class OneOf6<T0, T1, T2, T3, T4, T5> extends OneOf {
  OneOf6({
    required this.value,
    required this.typeIndex,
  });

  @override
  final int typeIndex;

  T0 get asT0 => value as T0;
  T1 get asT1 => value as T1;
  T2 get asT2 => value as T2;
  T3 get asT3 => value as T3;
  T4 get asT4 => value as T4;
  T5 get asT5 => value as T5;

  @override
  List<Type> get types => [T0, T1, T2, T3, T4, T5];

  @override
  final Object? value;
}
