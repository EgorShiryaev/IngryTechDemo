import 'package:flutter/material.dart';

import '../../../data/models/charging_point_small_model.dart';

class ChargingPointCardInfo extends StatelessWidget {
  final ChargingPointSmallModel model;
  const ChargingPointCardInfo({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            model.location.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(
              color: Color(0xFF000000),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(width: 8),
        const Icon(
          Icons.favorite,
          size: 20,
          color: Color(0xFFE1E000),
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
