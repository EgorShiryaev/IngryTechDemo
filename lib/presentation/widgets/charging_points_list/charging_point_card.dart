import 'package:flutter/material.dart';

import '../../../data/models/charging_point_small_model.dart';
import 'charging_point_card_content.dart';

class ChargingPointCard extends StatelessWidget {
  final ChargingPointSmallModel model;
  const ChargingPointCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Color(0xFFF5F5F5),
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: ChargingPointCardContent(model: model),
      ),
    );
  }
}
