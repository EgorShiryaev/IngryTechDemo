// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_full_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationFullModel _$LocationFullModelFromJson(Map<String, dynamic> json) =>
    LocationFullModel(
      latitude: json['latitude'] as String,
      longitude: json['longitude'] as String,
      parkingAccess: json['parkingAccess'] as String,
      workingHours: WorkingHoursModel.fromJson(
          json['workingHours'] as Map<String, dynamic>),
      id: json['id'] as String,
      title: json['title'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$LocationFullModelToJson(LocationFullModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'address': instance.address,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'parkingAccess': instance.parkingAccess,
      'workingHours': instance.workingHours,
    };
