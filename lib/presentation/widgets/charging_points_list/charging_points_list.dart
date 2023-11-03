import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controllers/charging_points_list_state_notifier/charging_points_list_state.dart';
import '../../controllers/charging_points_list_state_notifier/charging_points_list_state_notifier.dart';
import '../chargin_point_page/loading_maks.dart';
import 'card/charging_point_card.dart';

class ChargingPointsList extends ConsumerWidget {
  const ChargingPointsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(chargingPointsListStateNotifier);
    final provider = ref.read(chargingPointsListStateNotifier.notifier);
    if (state is ChargingPointsListInitial ||
        state is ChargingPointsListLoading) {
      return const LoadingMask();
    } else if (state is ChargingPointsListSuccess) {
      final points = state.points;
      return RefreshIndicator.adaptive(
        onRefresh: provider.refresh,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 16),
          itemBuilder: (context, index) {
            final model = points[index];
            return ChargingPointCard(model: model);
          },
          separatorBuilder: (context, index) => const SizedBox(height: 16),
          itemCount: points.length,
        ),
      );
    } else if (state is ChargingPointsListError) {
      // TODO make error widget
      return Text(state.error);
    }
    return const Text('Unknowed state of ChargingPointsListState');
  }
}
