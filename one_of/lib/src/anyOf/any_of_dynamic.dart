import 'any_of_base.dart';

class AnyOfDynamic extends AnyOf {
  @override
  final List<Type> types;

  AnyOfDynamic({
    required this.types,
    required this.values,
  });

  @override
  final Map<int, Object?> values;
}
