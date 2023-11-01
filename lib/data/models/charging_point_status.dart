import 'package:json_annotation/json_annotation.dart';

enum ChargingPointStatus {
  // B работе
  @JsonValue(1)
  operative,
  // Ремонт
  @JsonValue(2)
  repair,
  // Подготовка к запуску
  @JsonValue(3)
  gettingReadyForLaunch,
  // Не в работе
  @JsonValue(4)
  inoperative,
  // Автономно
  @JsonValue(5)
  unsupervised,
}

extension ChargingPointStatusEx on ChargingPointStatus {
  String get description {
    switch (this) {
      case ChargingPointStatus.operative:
        return 'В работе';
      case ChargingPointStatus.repair:
        return 'Ремонт';
      case ChargingPointStatus.inoperative:
        return 'Не в работе';
      case ChargingPointStatus.gettingReadyForLaunch:
        return 'Скоро запуск';
      case ChargingPointStatus.unsupervised:
        return 'Автономный режим';
    }
  }

  bool get isNeedChip =>
      this == ChargingPointStatus.gettingReadyForLaunch ||
      this == ChargingPointStatus.unsupervised;
}
