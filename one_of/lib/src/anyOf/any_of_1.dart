import 'any_of_base.dart';

class AnyOf1<T0> extends AnyOf {
  AnyOf1({
    required this.value,
  });

  final T0 value;

  @override
  List<Type> get types => [T0];

  @override
  Map<int, Object?> get values => {0: value};
}
