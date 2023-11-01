import 'package:json_annotation/json_annotation.dart';

enum ProductName {
  @JsonValue('charging_kwh')
  charging,
  @JsonValue('reservation')
  reservation,
}
