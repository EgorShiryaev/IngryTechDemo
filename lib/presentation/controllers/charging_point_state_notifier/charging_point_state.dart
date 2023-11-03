import '../../../data/models/charging_point_full_model.dart';

abstract class ChargingPointState {}

class ChargingPointInitial extends ChargingPointState {}

class ChargingPointLoading extends ChargingPointState {}

class ChargingPointSuccess extends ChargingPointState {
  ChargingPointFullModel point;

  ChargingPointSuccess({required this.point});
}

class ChargingPointError extends ChargingPointState {
  final String error;

  ChargingPointError({required this.error});
}
