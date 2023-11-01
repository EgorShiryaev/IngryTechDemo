import 'package:json_annotation/json_annotation.dart';

import '../../core/utils/get_charging_tariff.dart';
import 'tariff_small_model.dart';

part 'charging_connector_small_model.g.dart';

@JsonSerializable()
class ChargingConnectorSmallModel {
  // Id
  final String id;
  // Тарифы
  final List<TariffSmallModel> tariffs;
  // Стоимость зарядки
  late final TariffSmallModel chargingTariff;

  ChargingConnectorSmallModel({
    required this.id,
    required this.tariffs,
  }) : chargingTariff = getChargingTariff(tariffs);

  factory ChargingConnectorSmallModel.fromJson(Map<String, dynamic> json) =>
      _$ChargingConnectorSmallModelFromJson(json);

  Map<String, dynamic> toJson() => _$ChargingConnectorSmallModelToJson(this);
}
