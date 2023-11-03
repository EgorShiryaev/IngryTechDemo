import 'package:flutter/material.dart';

import '../../../mock/charging_point_small_models_mock.dart';
import 'card/charging_point_card.dart';

class ChargingPointsList extends StatelessWidget {
  const ChargingPointsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(top: 16),
      itemBuilder: (context, index) {
        final model = chargingPointSmallModelsMock[index];
        return ChargingPointCard(model: model);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: chargingPointSmallModelsMock.length,
    );
  }
}
