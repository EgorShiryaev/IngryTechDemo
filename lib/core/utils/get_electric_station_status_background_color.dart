import 'package:flutter/material.dart';

import '../../data/models/charging_point_status.dart';

Color getElectricStationStatusBackgroundColor(ChargingPointStatus status) {
  switch (status) {
    case ChargingPointStatus.gettingReadyForLaunch:
      return const Color(0xFF00A24D);
    case ChargingPointStatus.unsupervised:
      return const Color(0xFFF45C33);
    default:
      return Colors.transparent;
  }
}
