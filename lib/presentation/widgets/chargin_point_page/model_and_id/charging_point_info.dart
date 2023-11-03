import 'package:flutter/material.dart';

import '../../../../core/utils/is_charging_station_full_model.dart';
import '../../../../data/models/charging_point_small_model.dart';
import '../../../controllers/platform_info.dart';
import 'charging_point_id_view.dart';
import 'charging_point_model_info_view.dart';

class ChargingPointInfo extends StatelessWidget {
  final ChargingPointSmallModel model;
  const ChargingPointInfo({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    if (PlatformInfo.of(context).isMobile && isChargingPointFullModel(model)) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ChargingPointIdView(id: model.number),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: ChargingPointModelInfoView(model: model),
          ),
        ],
      );
    }

    return Row(
      children: [
        ChargingPointIdView(id: model.number),
        const SizedBox(width: 24),
        ChargingPointModelInfoView(model: model),
      ],
    );
  }
}
