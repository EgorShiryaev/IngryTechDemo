// ignore_for_file: overridden_fields

import 'package:json_annotation/json_annotation.dart';

import 'charging_point_small_model.dart';
import 'charging_point_status.dart';
import 'connector_full_model.dart';
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
  final LocationFullModel location;

  @override
  final List<ConnectorFullModel> connectors;

  ChargingPointFullModel({
    required this.power,
    required this.reservationLimit,
    required this.stationModel,
    required super.id,
    required super.number,
    required super.type,
    required super.status,
    required this.location,
    required this.connectors,
  }) : super(location: location, connectors: connectors);

  factory ChargingPointFullModel.fromJson(Map<String, dynamic> json) =>
      _$ChargingPointFullModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChargingPointFullModelToJson(this);
}
