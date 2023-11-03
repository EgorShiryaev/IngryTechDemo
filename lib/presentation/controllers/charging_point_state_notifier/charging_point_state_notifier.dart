import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data/datasources/charging_point_remote_datasource.dart';
import '../charging_point_notifier.dart';
import '../datasources/charging_point_remote_datasource_provider.dart';
import 'charging_point_state.dart';

final chargingPointStateNotifier =
    StateNotifierProvider<ChargingPointStateNotifier, ChargingPointState>(
  (ref) {
    final datasource = ref.read(chargingPointRemoteDatasourceProvider);
    final provider = ref.read(chargingPointNotifierProvider.notifier);
    return ChargingPointStateNotifier(
      datasource: datasource,
      provider: provider,
    );
  },
);

class ChargingPointStateNotifier extends StateNotifier<ChargingPointState> {
  final ChargingPointRemoteDatasource datasource;
  final ChargingPointNotifier provider;

  ChargingPointStateNotifier({
    required this.datasource,
    required this.provider,
  }) : super(ChargingPointInitial());

  Future<void> load(String id) async {
    state = ChargingPointLoading();
    try {
      final result = await datasource.load(id);
      state = ChargingPointSuccess(point: result);
      provider.select(result);
    } catch (e) {
      state = ChargingPointError(error: e.toString());
    }
  }
}
