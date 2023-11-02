import 'package:flutter/material.dart';

import '../../../data/models/charging_point_small_model.dart';
import '../../../mock/charging_point_full_model_mock.dart';
import '../../pages/args/charging_point_page_args.dart';
import '../../pages/charging_point_page.dart';
import 'charging_point_card_content.dart';

class ChargingPointCard extends StatelessWidget {
  final ChargingPointSmallModel model;
  const ChargingPointCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context,
            ChargingPointPage.routeName,
            arguments: ChargingPointPageArgs(
              model: chargingPointFullModelMock,
            ),
          );
        },
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ChargingPointCardContent(model: model),
        ),
      ),
    );
  }
}
