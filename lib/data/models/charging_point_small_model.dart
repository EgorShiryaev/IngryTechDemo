import 'package:json_annotation/json_annotation.dart';

import '../../core/utils/get_min_charging_tariff.dart';
import 'charging_point_status.dart';
import 'connector_small_model.dart';
import 'location_small_model.dart';
import 'tariff_small_model.dart';

part 'charging_point_small_model.g.dart';

@JsonSerializable()
class ChargingPointSmallModel {
  // Id
  final String id;
  // Номер станции
  @JsonKey(name: 'cpNumber')
  final String number;
  // Тип станции
  @JsonKey(name: 'cpType')
  final String type;
  // Статус
   @JsonKey(name: 'statusId')
  final ChargingPointStatus status;
  // Местонахождение
  final LocationSmallModel location;
  // Зарядки
  final List<ConnectorSmallModel> connectors;
  // Минимальный тариф зарядки
  late final TariffSmallModel? minChargingTariff;

  ChargingPointSmallModel({
    required this.id,
    required this.number,
    required this.type,
    required this.status,
    required this.location,
    required this.connectors,
  }) : minChargingTariff = getMinChargingTariff(connectors);

  factory ChargingPointSmallModel.fromJson(Map<String, dynamic> json) =>
      _$ChargingPointSmallModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChargingPointSmallModelToJson(this);
}
