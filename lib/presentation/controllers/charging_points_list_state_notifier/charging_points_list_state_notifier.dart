import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/datasources/charging_points_list_remote_datasource.dart';
import '../datasources/charging_points_list_remote_datasource_provider.dart';
import 'charging_points_list_state.dart';

final chargingPointsListStateNotifier = StateNotifierProvider<
    ChargingPointsListStateNotifier, ChargingPointsListState>((ref) {
  final datasource = ref.read(chargingPointsListRemoteDatasourceProvider);
  final notifier = ChargingPointsListStateNotifier(datasource: datasource);
  return notifier..refresh();
});

class ChargingPointsListStateNotifier
    extends StateNotifier<ChargingPointsListState> {
  final ChargingPointsListRemoteDatasource datasource;

  ChargingPointsListStateNotifier({required this.datasource})
      : super(ChargingPointsListInitial());

  Future<void> refresh() async {
    state = ChargingPointsListLoading();
    return loadNextRecords();
  }

  Future<void> loadNextRecords() async {
    try {
      final result = await datasource.loadPoints(offset);
      if (state is ChargingPointsListSuccess) {
        state = ChargingPointsListSuccess.copyWith(
          state as ChargingPointsListSuccess,
          result,
        );
      } else {
        state = ChargingPointsListSuccess(points: result);
      }
    } catch (e) {
      state = ChargingPointsListError(error: e.toString());
    }
  }

  int get offset {
    if (state is ChargingPointsListSuccess) {
      return (state as ChargingPointsListSuccess).points.length;
    }
    return 0;
  }
}
