import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/models/charging_point_small_model.dart';
import '../../../../mock/charging_point_full_model_mock.dart';
import '../../../controllers/charging_point_notifier.dart';
import '../../../pages/charging_point_page.dart';
import 'charging_point_card_content.dart';

class ChargingPointCard extends ConsumerWidget {
  final ChargingPointSmallModel model;
  const ChargingPointCard({super.key, required this.model});

  void openPage(BuildContext context) {
    Navigator.pushNamed(
      context,
      ChargingPointPage.routeName,
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      child: InkWell(
        onTap: () {
          ref
              .read(chargingPointNotifierProvider.notifier)
              .select(chargingPointFullModelMock);
          openPage(context);
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
