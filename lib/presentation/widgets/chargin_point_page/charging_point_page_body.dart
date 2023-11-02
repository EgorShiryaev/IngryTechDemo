import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/utils/is_charging_station_full_model.dart';
import '../../controllers/charging_point_notifier.dart';
import '../platform_offset.dart';
import 'charging_point_info.dart';
import 'charging_point_location_view.dart';
import 'loading_maks.dart';
import 'status_chip.dart';

class ChargingPointPageBody extends ConsumerWidget {
  const ChargingPointPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(chargingPointNotifierProvider)!;

    return Stack(
      children: [
        PlatformOffset(
          child: ListView(
            children: [
              Row(children: [StatusChip(status: model.status)]),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  children: [
                    ChargingPointInfo(model: model),
                    ChargingPointLocationView(location: model.location),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            ],
          ),
        ),
        if (!isChargingPointFullModel(model))
          const LoadingMask(),
      ],
    );
  }
}
