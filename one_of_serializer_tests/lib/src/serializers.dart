//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:one_of_serializer/any_of_serializer.dart';
import 'models/fruit_any.dart';
import 'models/apple.dart';
import 'models/banana.dart';
import 'models/fruit.dart';
import 'package:one_of_serializer/one_of_serializer.dart';

import 'models/one_of_primitives.dart';
import 'models/one_of_primitives_or_class.dart';

part 'serializers.g.dart';

@SerializersFor([
  Apple,
  Banana,
  Fruit,
  FruitAny,
  OneOfPrimitives,
  OneOfPrimitivesOrClass,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
