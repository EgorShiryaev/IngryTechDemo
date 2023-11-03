import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/datasources/charging_points_list_remote_datasource.dart';
import '../charging_points_list_remote_datasource_provider.dart';
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

  Future<void> _getPoints(int offset) async {
    state = ChargingPointsListLoading();
    try {
      final result = await datasource.loadList(0);
      state = ChargingPointsListSuccess(points: result);
    } catch (e) {
      state = ChargingPointsListError(error: e.toString());
    }
  }

  Future<void> refresh() => _getPoints(0);
}
