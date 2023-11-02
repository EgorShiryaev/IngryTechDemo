import 'package:flutter/material.dart';

import '../../../data/models/charging_point_small_model.dart';
import 'charging_point_card_content.dart';

class ChargingPointCard extends StatelessWidget {
  final ChargingPointSmallModel model;
  const ChargingPointCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {},
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ChargingPointCardContent(model: model),
        ),
      ),
    );
  }
}
