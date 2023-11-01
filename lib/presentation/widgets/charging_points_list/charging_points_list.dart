import 'package:flutter/material.dart';

import '../../../mock/charging_point_small_models_mock.dart';
import 'charging_point_card.dart';

class ChargingPointsList extends StatelessWidget {
  const ChargingPointsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        final model = chargingPointSmallModelsMock[index];
        return ChargingPointCard(model: model);
      },
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemCount: chargingPointSmallModelsMock.length,
    );
  }
}
