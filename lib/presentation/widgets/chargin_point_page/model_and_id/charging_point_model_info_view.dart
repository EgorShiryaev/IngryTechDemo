import 'package:flutter/material.dart';

import '../../../../core/utils/as_full_model.dart';
import '../../../../core/utils/convert_double_to_text.dart';
import '../../../../core/utils/is_charging_station_full_model.dart';
import '../../../../data/models/charging_point_small_model.dart';
import '../../charging_points_list/charging_point_avatar.dart';

class ChargingPointModelInfoView extends StatelessWidget {
  final ChargingPointSmallModel model;
  const ChargingPointModelInfoView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final stationModelTextStyle = theme.textTheme.bodyLarge?.copyWith(
      color: theme.colorScheme.onBackground,
      fontWeight: FontWeight.bold,
    );
    final kwhTextStyle = theme.textTheme.bodyLarge?.copyWith(
      color: theme.colorScheme.onBackground,
    );

    return Row(
      children: [
        if (isChargingPointFullModel(model))
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text(
              asFullModel(model).stationModel,
              style: stationModelTextStyle,
            ),
          ),
        ChargingPointAvatar(size: 24, type: model.type),
        if (isChargingPointFullModel(model))
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              // ignore: lines_longer_than_80_chars
              '${convertDoubleToText(asFullModel(model).power)} кВт',
              style: kwhTextStyle,
            ),
          ),
      ],
    );
  }
}
