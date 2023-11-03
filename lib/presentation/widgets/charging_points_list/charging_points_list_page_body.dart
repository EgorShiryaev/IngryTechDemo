import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controllers/charging_points_list_state_notifier/charging_points_list_state.dart';
import '../../controllers/charging_points_list_state_notifier/charging_points_list_state_notifier.dart';
import '../chargin_point_page/loading_mask.dart';
import '../error_view.dart';
import 'charging_points_list.dart';

class ChargingPointsListPageBody extends ConsumerWidget {
  const ChargingPointsListPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(chargingPointsListStateNotifier);
    final provider = ref.watch(chargingPointsListStateNotifier.notifier);

    if (state is ChargingPointsListInitial ||
        state is ChargingPointsListLoading) {
      return const LoadingMask();
    } else if (state is ChargingPointsListSuccess) {
      return const ChargingPointsList();
    } else if (state is ChargingPointsListError) {
      return ErrorView(onRetry: provider.refresh);
    }
    return const Text('Unknowed state of ChargingPointsListState');
  }
}
