import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../controllers/charging_points_list_state_notifier/charging_points_list_state.dart';
import '../../controllers/charging_points_list_state_notifier/charging_points_list_state_notifier.dart';
import 'card/charging_point_card.dart';

bool hasMore = true;
int previousPointsLength = 0;

class ChargingPointsList extends ConsumerWidget {
  const ChargingPointsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(chargingPointsListStateNotifier);
    final provider = ref.read(chargingPointsListStateNotifier.notifier);
    final points = (state as ChargingPointsListSuccess).points;
    hasMore = previousPointsLength != points.length;
    return RefreshIndicator.adaptive(
      onRefresh: () {
        previousPointsLength = 0;
        return provider.refresh();
      },
      child: ListView.separated(
        itemCount: points.length + 1,
        padding: const EdgeInsets.symmetric(vertical: 16),
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          if (index == points.length && hasMore) {
            provider.loadNextRecords();
            previousPointsLength = points.length;
            return const Padding(
              padding: EdgeInsets.all(8),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          } else if (index == points.length) {
            return const SizedBox();
          }
          final model = points[index];
          return ChargingPointCard(model: model);
        },
      ),
    );
  }
}
