import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/get_icon_full_path.dart';
import '../../../../data/models/charging_point_small_model.dart';

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
        SvgPicture.asset(
          getIconFullPath('filled-heart'),
          width: 20,
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
