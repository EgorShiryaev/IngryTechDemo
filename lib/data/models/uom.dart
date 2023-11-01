import 'package:json_annotation/json_annotation.dart';

enum UOM {
  @JsonValue('kwh')
  kwh,
  @JsonValue('minutes')
  minutes,
}
