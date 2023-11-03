import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/is_charging_station_full_model.dart';
import '../../controllers/charging_point_notifier.dart';
import '../../controllers/charging_point_state_notifier/charging_point_state.dart';
import '../../controllers/charging_point_state_notifier/charging_point_state_notifier.dart';
import 'charging_point_page_content.dart';
import 'loading_mask.dart';

class ChargingPointPageBody extends ConsumerWidget {
  const ChargingPointPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(chargingPointNotifierProvider)!;
    final state = ref.watch(chargingPointStateNotifier);

    return Stack(
      children: [
        if (state is ChargingPointError)
          //Todo добавить экран ошибки
          const SizedBox()
        else
          const ChargingPointPageContent(),
        if (!isChargingPointFullModel(model)) const LoadingMask(),
      ],
    );
  }
}
