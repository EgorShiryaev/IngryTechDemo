// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charging_point_small_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargingPointSmallModel _$ChargingPointSmallModelFromJson(
        Map<String, dynamic> json) =>
    ChargingPointSmallModel(
      id: json['id'] as String,
      cpNumber: json['cpNumber'] as String,
      cpType: json['cpType'] as String,
      status: $enumDecode(_$ChargingPointStatusEnumMap, json['status']),
      location:
          LocationSmallModel.fromJson(json['location'] as Map<String, dynamic>),
      connectors: (json['connectors']['data'] as List<dynamic>)
          .map((e) =>
              ChargingConnectorSmallModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChargingPointSmallModelToJson(
        ChargingPointSmallModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cpNumber': instance.cpNumber,
      'cpType': instance.cpType,
      'status': _$ChargingPointStatusEnumMap[instance.status]!,
      'location': instance.location,
      'connectors': instance.connectors,
    };

const _$ChargingPointStatusEnumMap = {
  ChargingPointStatus.operative: 'OPERATIVE',
  ChargingPointStatus.repair: 'REPAIR',
  ChargingPointStatus.gettingReadyForLaunch: 'GETTING READY FOR LAUNCH',
  ChargingPointStatus.inoperative: 'INOPERATIVE',
  ChargingPointStatus.unsupervised: 'UNSUPERVISED',
};
