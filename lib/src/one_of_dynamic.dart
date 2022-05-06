import 'one_of_base.dart';

class OneOfDynamic extends OneOf {
  @override
  final int typeIndex;

  @override
  final List<Type> types;

  @override
  final Object? value;

  OneOfDynamic({
    required this.typeIndex,
    required this.types,
    required this.value,
  });
}
