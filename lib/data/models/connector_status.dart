import 'package:json_annotation/json_annotation.dart';

enum ConnectorStatus {
  // Коннектор доступен для новой зарядки
  @JsonValue(1)
  available,
  // Зарядная сессия еще не началась, но коннектор уже недоступен для новой
  // зарядки
  @JsonValue(2)
  preparing,
  // Коннектор подсоединен и подает энергию (контактор замкнут)
  @JsonValue(3)
  charging,
  // Коннектор подсоединен, но контактор разомкнут по запросу станции
  @JsonValue(4)
  suspendedevse,
  // Коннектор подсоединен и станция готова подавать энергию, но электромобиль
  // не готов принимать её (контактор разомкнут)
  @JsonValue(5)
  suspendedev,
  // Зарядная сессия завершена, но коннектор еще не доступен для новой зарядки
  @JsonValue(6)
  finishing,
  // Коннектор забронирован
  @JsonValue(7)
  reserved,
  // Коннектор недоступен
  @JsonValue(8)
  unavailable,
  // Коннектор вернул ошибку или не может подавать энергию по иным причинам
  @JsonValue(9)
  faulted,
  // Коннектор занят
  @JsonValue(10)
  occupied,
}

extension ChargingPointStatusEx on ConnectorStatus {
  String get description {
    switch (this) {
      case ConnectorStatus.available:
        return 'Свободен';
      case ConnectorStatus.preparing:
      case ConnectorStatus.unavailable:
      case ConnectorStatus.finishing:
      case ConnectorStatus.faulted:
        return 'Недоступен';
      case ConnectorStatus.charging:
      case ConnectorStatus.suspendedevse:
      case ConnectorStatus.suspendedev:
      case ConnectorStatus.occupied:
        return 'Занят';
      case ConnectorStatus.reserved:
        return 'Забронировано';
    }
  }
}
