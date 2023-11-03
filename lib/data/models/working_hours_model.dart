import 'package:json_annotation/json_annotation.dart';

part 'working_hours_model.g.dart';

@JsonSerializable()
class WorkingHoursModel {
  // Начало рабочего дня
  @JsonKey(name: 'workingHoursStart')
  final String start;
  // Конец рабочего дня
  @JsonKey(name: 'workingHoursEnd')
  final String end;

  WorkingHoursModel({
    required this.start,
    required this.end,
  });

  factory WorkingHoursModel.fromJson(Map<String, dynamic> json) =>
      _$WorkingHoursModelFromJson(json);

  Map<String, dynamic> toJson() => _$WorkingHoursModelToJson(this);
}
