import 'package:json_annotation/json_annotation.dart';

enum ProductName {
  // Зарядка
  @JsonValue('charging_kwh')
  charging,
   // Бронирование
  @JsonValue('reservation')
  reservation,
}
