import 'package:flutter/material.dart';

import '../../data/models/charging_point_status.dart';

Color getChargingPointStatusBackgroundColor(ChargingPointStatus status) {
  switch (status) {
    case ChargingPointStatus.gettingReadyForLaunch:
      return const Color(0xFF00A24D);
    case ChargingPointStatus.unsupervised:
      return const Color(0xFFF45C33);
    case ChargingPointStatus.operative:
    case ChargingPointStatus.repair:
    case ChargingPointStatus.inoperative:
      return Colors.transparent;
  }
}
