import 'package:json_annotation/json_annotation.dart';

import 'charging_point_small_model.dart';
import 'charging_point_status.dart';
import 'connector_small_model.dart';
import 'location_full_model.dart';

part 'charging_point_full_model.g.dart';

@JsonSerializable()
class ChargingPointFullModel extends ChargingPointSmallModel {
  // Мощность зарядки
  final double power;
  // Лимит бронирования
  final int reservationLimit;
  // Модель станции
  @JsonKey(name: 'model')
  final String stationModel;
  // Локация
  @override
  // ignore: overridden_fields
  final LocationFullModel location;

  ChargingPointFullModel({
    required this.power,
    required this.reservationLimit,
    required this.stationModel,
    required super.id,
    required super.number,
    required super.type,
    required super.status,
    required this.location,
    required super.connectors,
  }) : super(location: location);

  factory ChargingPointFullModel.fromJson(Map<String, dynamic> json) =>
      _$ChargingPointFullModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChargingPointFullModelToJson(this);
}
