import 'package:json_annotation/json_annotation.dart';

import 'charging_point_small_model.dart';
import 'charging_point_status.dart';
import 'connector_small_model.dart';
import 'location_small_model.dart';

part 'charging_point_full_model.g.dart';

@JsonSerializable()
class ChargingPointFullModel extends ChargingPointSmallModel {
  // Мощность зарядки
  final double power;
  // Лимит бронирования
  final int reservationLimit;
  // Модель станции
  final String model;

  ChargingPointFullModel({
    required this.power,
    required this.reservationLimit,
    required this.model,
    required super.id,
    required super.number,
    required super.type,
    required super.status,
    required super.location,
    required super.connectors,
  });

  factory ChargingPointFullModel.fromJson(Map<String, dynamic> json) =>
      _$ChargingPointFullModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ChargingPointFullModelToJson(this);
}
