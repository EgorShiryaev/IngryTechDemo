// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'working_hours_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkingHoursModel _$WorkingHoursModelFromJson(Map<String, dynamic> json) =>
    WorkingHoursModel(
      start: json['workingHoursStart'] as String,
      end: json['workingHoursEnd'] as String,
    );

Map<String, dynamic> _$WorkingHoursModelToJson(WorkingHoursModel instance) =>
    <String, dynamic>{
      'workingHoursStart': instance.start,
      'workingHoursEnd': instance.end,
    };
