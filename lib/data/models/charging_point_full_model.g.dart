// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charging_point_full_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargingPointFullModel _$ChargingPointFullModelFromJson(
        Map<String, dynamic> json) =>
    ChargingPointFullModel(
      power: (json['power'] as num).toDouble(),
      reservationLimit: json['reservationLimit'] as int,
      stationModel: json['model'] as String,
      id: json['id'] as String,
      number: json['cpNumber'] as String,
      type: json['cpType'] as String,
      status: $enumDecode(_$ChargingPointStatusEnumMap, json['statusId']),
      location:
          LocationFullModel.fromJson(json['location'] as Map<String, dynamic>),
     connectors: (json['connectors']['data'] as List<dynamic>)
          .map((e) => ConnectorSmallModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChargingPointFullModelToJson(
        ChargingPointFullModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cpNumber': instance.number,
      'cpType': instance.type,
      'statusId': _$ChargingPointStatusEnumMap[instance.status]!,
      'location': instance.location,
      'connectors': instance.connectors,
      'power': instance.power,
      'reservationLimit': instance.reservationLimit,
      'model': instance.stationModel,
    };

const _$ChargingPointStatusEnumMap = {
  ChargingPointStatus.operative: 1,
  ChargingPointStatus.repair: 2,
  ChargingPointStatus.gettingReadyForLaunch: 3,
  ChargingPointStatus.inoperative: 4,
  ChargingPointStatus.unsupervised: 5,
};
