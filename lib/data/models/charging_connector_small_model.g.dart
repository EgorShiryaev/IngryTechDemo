// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charging_connector_small_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargingConnectorSmallModel _$ChargingConnectorSmallModelFromJson(
        Map<String, dynamic> json) =>
    ChargingConnectorSmallModel(
      id: json['id'] as String,
      tariffs: (json['tariffs'] as List<dynamic>)
          .map((e) => TariffSmallModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ChargingConnectorSmallModelToJson(
        ChargingConnectorSmallModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tariffs': instance.tariffs,
    };
