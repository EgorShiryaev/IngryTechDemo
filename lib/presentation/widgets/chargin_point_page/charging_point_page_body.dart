import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/as_full_model.dart';
import '../../../core/utils/is_charging_station_full_model.dart';
import '../../controllers/charging_point_notifier.dart';
import 'connectors/connectors_list_view.dart';
import 'loading_maks.dart';
import 'location_view/charging_point_location_view.dart';
import 'model_and_id/charging_point_info.dart';
import 'status_chip.dart';

class ChargingPointPageBody extends ConsumerWidget {
  const ChargingPointPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(chargingPointNotifierProvider)!;

    return Stack(
      children: [
        ListView(
          padding: const EdgeInsets.only(top: 16, bottom: 24),
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(children: [StatusChip(status: model.status)]),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      children: [
                        ChargingPointInfo(model: model),
                        ChargingPointLocationView(location: model.location),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            if (isChargingPointFullModel(model))
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: SizedBox(
                  height: 212,
                  child: ConnectorsListView(
                    connectors: asFullModel(model).connectors,
                  ),
                ),
              ),
          ],
        ),
        if (!isChargingPointFullModel(model)) const LoadingMask(),
      ],
    );
  }
}
