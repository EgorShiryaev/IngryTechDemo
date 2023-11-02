import 'package:flutter/material.dart';

import '../../../core/utils/get_address_with_out_post_code.dart';
import '../../../data/models/charging_point_small_model.dart';
import 'charging_point_avatar.dart';
import 'charging_point_card_chip_bar.dart';
import 'charging_point_card_info.dart';

class ChargingPointCardContent extends StatelessWidget {
  final ChargingPointSmallModel model;
  late final String addressWithOutPostCode;
  ChargingPointCardContent({super.key, required this.model})
      : addressWithOutPostCode =
            getAddressWithOutPostCode(model.location.address);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ChargingPointAvatar(cpType: model.type),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ChargingPointCardChipBar(model: model),
              ChargingPointCardInfo(model: model),
              Text(
                addressWithOutPostCode,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
