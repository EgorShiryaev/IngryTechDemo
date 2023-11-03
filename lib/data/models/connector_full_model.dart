import 'package:json_annotation/json_annotation.dart';

import 'connector_small_model.dart';
import 'connector_status.dart';
import 'connector_type.dart';
import 'tariff_small_model.dart';

part 'connector_full_model.g.dart';

@JsonSerializable()
class ConnectorFullModel extends ConnectorSmallModel {
  // Тип
  @JsonKey(name: 'typeId')
  final ConnectorType type;
  // Статус
  @JsonKey(name: 'statusId')
  final ConnectorStatus status;
  // Id для станции зарядки
  final String number;

  ConnectorFullModel({
    required this.type,
    required this.status,
    required this.number,
    required super.id,
    required super.tariffs,
  });
  factory ConnectorFullModel.fromJson(Map<String, dynamic> json) =>
      _$ConnectorFullModelFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ConnectorFullModelToJson(this);
}
