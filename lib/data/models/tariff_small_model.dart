import 'package:json_annotation/json_annotation.dart';

import 'product_name.dart';
import 'uom.dart';

part 'tariff_small_model.g.dart';

@JsonSerializable()
class TariffSmallModel {
  // Id
  final String id;
  // Название продукта
  final ProductName productName;
  // Стоимость за единицу
  final double price;
  // Единица измерения продукта
  final UOM uom;

  TariffSmallModel({
    required this.id,
    required this.productName,
    required this.price,
    required this.uom,
  });

  factory TariffSmallModel.fromJson(Map<String, dynamic> json) =>
      _$TariffSmallModelFromJson(json);

  Map<String, dynamic> toJson() => _$TariffSmallModelToJson(this);
}
