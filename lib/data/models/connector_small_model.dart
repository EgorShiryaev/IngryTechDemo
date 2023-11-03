import 'package:json_annotation/json_annotation.dart';

import '../../core/utils/get_charging_tariff.dart';
import 'tariff_small_model.dart';

part 'connector_small_model.g.dart';

@JsonSerializable()
class ConnectorSmallModel {
  // Id
  final String id;
  // Тарифы
  final List<TariffSmallModel> tariffs;
  // Стоимость зарядки
  late final TariffSmallModel chargingTariff;

  ConnectorSmallModel({
    required this.id,
    required this.tariffs,
  }) : chargingTariff = getChargingTariff(tariffs);

  factory ConnectorSmallModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectorSmallModelFromJson(json);

  Map<String, dynamic> toJson() => _$ConnectorSmallModelToJson(this);
}
