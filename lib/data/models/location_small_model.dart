import 'package:json_annotation/json_annotation.dart';

part 'location_small_model.g.dart';

@JsonSerializable()
class LocationSmallModel {
  // Id
  final String id;
  // Название
  final String title;
  // Адрес
  final String address;

  LocationSmallModel({
    required this.id,
    required this.title,
    required this.address,
  });

  factory LocationSmallModel.fromJson(Map<String, dynamic> json) =>
      _$LocationSmallModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationSmallModelToJson(this);
}
