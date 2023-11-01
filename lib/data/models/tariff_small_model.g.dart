// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tariff_small_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TariffSmallModel _$TariffSmallModelFromJson(Map<String, dynamic> json) =>
    TariffSmallModel(
      id: json['id'] as String,
      productName: $enumDecode(_$ProductNameEnumMap, json['productName']),
      price: (json['price'] as num).toDouble(),
      uom: $enumDecode(_$UOMEnumMap, json['uom']),
    );

Map<String, dynamic> _$TariffSmallModelToJson(TariffSmallModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'productName': _$ProductNameEnumMap[instance.productName]!,
      'price': instance.price,
      'uom': _$UOMEnumMap[instance.uom]!,
    };

const _$ProductNameEnumMap = {
  ProductName.charging: 'charging_kwh',
  ProductName.reservation: 'reservation',
};

const _$UOMEnumMap = {
  UOM.kwh: 'kwh',
  UOM.minutes: 'minutes',
};
