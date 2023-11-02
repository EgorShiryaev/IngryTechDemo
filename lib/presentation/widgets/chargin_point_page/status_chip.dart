import 'package:flutter/material.dart';

import '../../../core/utils/get_charging_point_status_background_color_variant.dart';
import '../../../core/utils/get_charging_point_status_color.dart';
import '../../../data/models/charging_point_status.dart';

class StatusChip extends StatelessWidget {
  final ChargingPointStatus status;
  const StatusChip({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final backgroundColor =
        getChargingPointStatusBackgroundColorVariant(status);
    final pointColor = getChargingPointStatusColor(status);
    return Ink(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            DecoratedBox(
              decoration: BoxDecoration(
                color: pointColor,
                borderRadius: const BorderRadius.all(Radius.circular(12)),
              ),
              child: const SizedBox.square(dimension: 12),
            ),
            const SizedBox(width: 12),
            Text(
              status.description,
              style: const TextStyle(
                fontSize: 15,
                color: Color(0xFF000000),
              ),
            ),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
