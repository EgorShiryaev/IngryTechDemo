// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connector_small_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectorSmallModel _$ConnectorSmallModelFromJson(Map<String, dynamic> json) =>
    ConnectorSmallModel(
      id: json['id'] as String,
      tariffs: (json['tariffs'] as List<dynamic>)
          .map((e) => TariffSmallModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConnectorSmallModelToJson(
        ConnectorSmallModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tariffs': instance.tariffs,
    };
