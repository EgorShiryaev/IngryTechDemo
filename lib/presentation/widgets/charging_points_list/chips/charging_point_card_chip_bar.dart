import 'package:flutter/material.dart';

import '../../../../data/models/charging_point_small_model.dart';
import '../../../../data/models/charging_point_status.dart';
import 'min_charging_tariff_chip.dart';
import 'status_chip.dart';

class ChargingPointCardChipBar extends StatelessWidget {
  final ChargingPointSmallModel model;
  const ChargingPointCardChipBar({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final numberTextStyle = theme.textTheme.labelSmall?.copyWith(
      color: theme.colorScheme.outline,
    );
    return Row(
      children: [
        Text('№${model.number}', style: numberTextStyle),
        const SizedBox(width: 8),
        MinChargingTariffChip(price: model.minChargingTariff?.price ?? 0),
        const Spacer(),
        if (model.status.isNeedChip) StatusChip(status: model.status),
      ],
    );
  }
}
