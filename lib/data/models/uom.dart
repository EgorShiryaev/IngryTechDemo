import 'package:json_annotation/json_annotation.dart';

enum UOM {
  // кВт*ч
  @JsonValue('kwh')
  kwh,
  // Минуты
  @JsonValue('minutes')
  minutes,
}
