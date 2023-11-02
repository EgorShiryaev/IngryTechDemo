import 'package:json_annotation/json_annotation.dart';

enum ConnectorType {
  // CHAdeMO
  @JsonValue(1)
  chademo,
  // CCS 2
  @JsonValue(7)
  iec62196t2combo,
  // TYPE 2
  @JsonValue(8)
  iec62196t2,
  // ТУРЕ 1
  @JsonValue(9)
  iec62196t1,
  // CCS 1
  @JsonValue(10)
  iec62196t1combo,
  //GB/T DO
  @JsonValue(12)
  gbtDc,
  // Euro 220V
  @JsonValue(14)
  domesticC,
  // Любые другие стандарты
  other
}

extension ChargingPointStatusEx on ConnectorType {
  String get description {
    switch (this) {
      case ConnectorType.chademo:
        return 'CHAdeMO';
      case ConnectorType.iec62196t2combo:
        return 'CCS 2';
      case ConnectorType.iec62196t2:
        return 'TYPE 2';
      case ConnectorType.iec62196t1:
        return 'ТУРЕ 1';
      case ConnectorType.iec62196t1combo:
        return 'CCS 1';
      case ConnectorType.gbtDc:
        return 'GB/T DO';
      case ConnectorType.domesticC:
        return 'Euro 220V';
      case ConnectorType.other:
        return 'Неизвестный стандарт';
    }
  }
}
