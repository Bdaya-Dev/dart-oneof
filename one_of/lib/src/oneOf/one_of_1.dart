import 'one_of_base.dart';

class OneOf1<T0> extends OneOf {
  OneOf1({
    required this.value,
  });

  @override
  int get typeIndex => 0;

  @override
  final T0 value;

  @override
  List<Type> get types => [T0];
}
