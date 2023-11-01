import 'package:json_annotation/json_annotation.dart';

import '../../core/utils/get_min_charging_tariff.dart';
import 'charging_connector_small_model.dart';
import 'charging_point_status.dart';
import 'location_small_model.dart';
import 'tariff_small_model.dart';

part 'charging_point_small_model.g.dart';

@JsonSerializable()
class ChargingPointSmallModel {
  // Id
  final String id;
  // Номер станции
  final String cpNumber;
  // Тип станции
  final String cpType;
  // Статус
  final CharginPointStatus status;
  // Местонахождение
  final LocationSmallModel location;
  // Зарядки
  final List<ChargingConnectorSmallModel> connectors;
  // Минимальный тариф зарядки
  late final TariffSmallModel? minChargingTariff;

  ChargingPointSmallModel({
    required this.id,
    required this.cpNumber,
    required this.cpType,
    required this.status,
    required this.location,
    required this.connectors,
  }) : minChargingTariff = getMinChargingTariff(connectors);

  factory ChargingPointSmallModel.fromJson(Map<String, dynamic> json) =>
      _$ChargingPointSmallModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChargingPointSmallModelToJson(this);
}
