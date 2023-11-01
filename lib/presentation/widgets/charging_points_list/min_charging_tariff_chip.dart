import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/utils/convert_price_to_text.dart';
import 'info_chip.dart';

const black = Color(0xFF000000);
const white = Color(0xFFFFFFFF);
const lightGreen = Color(0xFFEBEA00);

class MinChargingTariffChip extends StatelessWidget {
  final double price;
  const MinChargingTariffChip({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    final isFree = price == 0;
    final priceText = convertPriceToText(price);

    return InfoChip(
      label: isFree ? 'Бесплатно' : '$priceText₽/кВт*ч',
      labelColor: black,
      backgroundColor: isFree ? lightGreen : white,
    );
  }
}
