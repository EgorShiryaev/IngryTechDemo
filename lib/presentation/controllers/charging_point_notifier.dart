import 'package:riverpod/riverpod.dart';

import '../../data/models/charging_point_small_model.dart';

final chargingPointNotifierProvider =
    NotifierProvider<ChargingPointNotifier, ChargingPointSmallModel?>(
  ChargingPointNotifier.new,
);

class ChargingPointNotifier extends Notifier<ChargingPointSmallModel?> {
  @override
  ChargingPointSmallModel? build() {
    return null;
  }

  // ignore: use_setters_to_change_properties
  void select(ChargingPointSmallModel model) {
    state = model;
  }
}
