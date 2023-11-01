import 'package:json_annotation/json_annotation.dart';

enum ChargingPointStatus {
  @JsonValue('OPERATIVE')
  operative,
  @JsonValue('REPAIR')
  repair,
  @JsonValue('GETTING READY FOR LAUNCH')
  gettingReadyForLaunch,
  @JsonValue('INOPERATIVE')
  inoperative,
  @JsonValue('UNSUPERVISED')
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
