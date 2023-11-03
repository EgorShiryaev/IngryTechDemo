import 'package:flutter/material.dart';

import '../../../../core/utils/convert_price_to_text.dart';
import 'info_chip.dart';

class MinChargingTariffChip extends StatelessWidget {
  final double price;
  const MinChargingTariffChip({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    final isFree = price == 0;
    final priceText = convertPriceToText(price);

    final colorScheme = Theme.of(context).colorScheme;

    return InfoChip(
      label: isFree ? 'Бесплатно' : '$priceText₽/кВт*ч',
      labelColor: colorScheme.onBackground,
      backgroundColor:
          isFree ? colorScheme.primaryContainer : colorScheme.surface,
    );
  }
}
