import 'package:flutter/material.dart';

import '../../data/models/charging_point_status.dart';

Color getChargingPointStatusColor(ChargingPointStatus status) {
  switch (status) {
    case ChargingPointStatus.operative:
      return const Color(0xFF36B37E);
    case ChargingPointStatus.gettingReadyForLaunch:
      return const Color(0xFF00A24D);
    case ChargingPointStatus.unsupervised:
      return const Color(0xFFF45C33);
    case ChargingPointStatus.repair:
    case ChargingPointStatus.inoperative:
      return Colors.red;
  }
}
