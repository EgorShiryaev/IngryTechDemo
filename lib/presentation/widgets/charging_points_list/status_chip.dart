import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../core/utils/get_electric_station_status_background_color.dart';
import '../../../data/models/charging_point_status.dart';
import 'info_chip.dart';

const white = Color(0xFFFFFFFF);

class StatusChip extends StatelessWidget {
  final ChargingPointStatus status;
  const StatusChip({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final backgroundColor = getElectricStationStatusBackgroundColor(status);

    return Align(
      alignment: Alignment.centerRight,
      child: InfoChip(
        label: status.description,
        labelColor: white,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
