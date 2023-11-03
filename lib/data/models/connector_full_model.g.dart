// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connector_full_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectorFullModel _$ConnectorFullModelFromJson(Map<String, dynamic> json) =>
    ConnectorFullModel(
      type: $enumDecode(
        _$ConnectorTypeEnumMap,
        json['typeId'],
        unknownValue: ConnectorType.other,
      ),
      status: $enumDecode(_$ConnectorStatusEnumMap, json['statusId']),
      number: json['number'] as String,
      id: json['id'] as String,
      tariffs: (json['tariffs'] as List<dynamic>)
          .map((e) => TariffSmallModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ConnectorFullModelToJson(ConnectorFullModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tariffs': instance.tariffs,
      'chargingTariff': instance.chargingTariff,
      'typeId': _$ConnectorTypeEnumMap[instance.type]!,
      'statusId': _$ConnectorStatusEnumMap[instance.status]!,
      'number': instance.number,
    };

const _$ConnectorTypeEnumMap = {
  ConnectorType.chademo: 1,
  ConnectorType.iec62196t2combo: 7,
  ConnectorType.iec62196t2: 8,
  ConnectorType.iec62196t1: 9,
  ConnectorType.iec62196t1combo: 10,
  ConnectorType.gbtDc: 12,
  ConnectorType.domesticC: 14,
};

const _$ConnectorStatusEnumMap = {
  ConnectorStatus.available: 1,
  ConnectorStatus.preparing: 2,
  ConnectorStatus.charging: 3,
  ConnectorStatus.suspendedevse: 4,
  ConnectorStatus.suspendedev: 5,
  ConnectorStatus.finishing: 6,
  ConnectorStatus.reserved: 7,
  ConnectorStatus.unavailable: 8,
  ConnectorStatus.faulted: 9,
  ConnectorStatus.occupied: 10,
};
