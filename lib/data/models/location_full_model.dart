import 'package:json_annotation/json_annotation.dart';

import 'location_small_model.dart';
import 'working_hours_model.dart';

part 'location_full_model.g.dart';

@JsonSerializable()
class LocationFullModel extends LocationSmallModel {
  // Широта
  final double latitude;
  // Долгота
  final double longitude;
  // Доступ к парковке
  final String parkingAccess;
  // Время работы
  final WorkingHoursModel workingHours;
  // Бесплатная парковка
  late final bool isFreeParking;

  LocationFullModel({
    required this.latitude,
    required this.longitude,
    required this.parkingAccess,
    required this.workingHours,
    required super.id,
    required super.title,
    required super.address,
  }) : isFreeParking = parkingAccess == 'free';

  factory LocationFullModel.fromJson(Map<String, dynamic> json) =>
      _$LocationFullModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$LocationFullModelToJson(this);
}
