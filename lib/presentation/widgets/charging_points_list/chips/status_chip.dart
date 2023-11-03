import 'package:flutter/material.dart';

import '../../../../core/utils/get_charging_point_status_background_color.dart';
import '../../../../data/models/charging_point_status.dart';
import 'info_chip.dart';

class StatusChip extends StatelessWidget {
  final ChargingPointStatus status;
  const StatusChip({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = getChargingPointStatusBackgroundColor(status);
    final colorScheme = Theme.of(context).colorScheme;

    return Align(
      alignment: Alignment.centerRight,
      child: InfoChip(
        label: status.description,
        labelColor: colorScheme.surface,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
