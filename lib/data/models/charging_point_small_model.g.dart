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
      status: $enumDecode(_$CharginPointStatusEnumMap, json['status']),
      location:
          LocationSmallModel.fromJson(json['location'] as Map<String, dynamic>),
      connectors: (json['connectors']['data'] as List<dynamic>)
          .map((e) =>
              ChargingConnectorSmallModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..minChargingTariff = json['minChargingTariff'] == null
        ? null
        : TariffSmallModel.fromJson(
            json['minChargingTariff'] as Map<String, dynamic>);

Map<String, dynamic> _$ChargingPointSmallModelToJson(
        ChargingPointSmallModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'cpNumber': instance.cpNumber,
      'cpType': instance.cpType,
      'status': _$CharginPointStatusEnumMap[instance.status]!,
      'location': instance.location,
      'connectors': instance.connectors,
      'minChargingTariff': instance.minChargingTariff,
    };

const _$CharginPointStatusEnumMap = {
  CharginPointStatus.operative: 'OPERATIVE',
  CharginPointStatus.repair: 'REPAIR',
  CharginPointStatus.gettingReadyForLaunch: 'GETTING READY FOR LAUNCH',
  CharginPointStatus.inoperative: 'INOPERATIVE',
  CharginPointStatus.unsupervised: 'UNSUPERVISED',
};
