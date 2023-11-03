import '../../../data/models/charging_point_small_model.dart';

abstract class ChargingPointsListState {}

class ChargingPointsListInitial extends ChargingPointsListState {}

class ChargingPointsListLoading extends ChargingPointsListState {}

class ChargingPointsListSuccess extends ChargingPointsListState {
  List<ChargingPointSmallModel> points;

  ChargingPointsListSuccess({required this.points});

  factory ChargingPointsListSuccess.copyWith(
    ChargingPointsListSuccess state,
    List<ChargingPointSmallModel> points,
  ) {
    return ChargingPointsListSuccess(
      points: [...state.points, ...points],
    );
  }
}

class ChargingPointsListError extends ChargingPointsListState {
  final String error;

  ChargingPointsListError({required this.error});
}
