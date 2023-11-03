import 'package:flutter/material.dart';

import '../../../../data/models/charging_point_small_model.dart';
import 'favorite_icon_view.dart';

class ChargingPointCardInfo extends StatelessWidget {
  final ChargingPointSmallModel model;
  const ChargingPointCardInfo({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final titleTextStyle = textTheme.bodyLarge?.copyWith(
      color: const Color(0xFF000000),
      fontWeight: FontWeight.w500,
    );

    return Row(
      children: [
        Expanded(
          child: Text(
            model.location.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: titleTextStyle,
          ),
        ),
        FavoriteIconView(id: model.id),
      ],
    );
  }
}
