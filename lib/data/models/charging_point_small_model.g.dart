// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charging_point_small_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargingPointSmallModel _$ChargingPointSmallModelFromJson(
        Map<String, dynamic> json) =>
    ChargingPointSmallModel(
      id: json['id'] as String,
      number: json['cpNumber'] as String,
      type: json['cpType'] as String,
      status: $enumDecode(_$ChargingPointStatusEnumMap, json['statusId']),
      location:
          LocationSmallModel.fromJson(json['location'] as Map<String, dynamic>),
      connectors: (json['connectors']['data'] as List<dynamic>)
          .map((e) => ConnectorSmallModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChargingPointSmallModelToJson(
        ChargingPointSmallModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cpNumber': instance.number,
      'cpType': instance.type,
      'statusId': _$ChargingPointStatusEnumMap[instance.status]!,
      'location': instance.location,
      'connectors': instance.connectors,
    };

const _$ChargingPointStatusEnumMap = {
  ChargingPointStatus.operative: 1,
  ChargingPointStatus.repair: 2,
  ChargingPointStatus.gettingReadyForLaunch: 3,
  ChargingPointStatus.inoperative: 4,
  ChargingPointStatus.unsupervised: 5,
};
