import 'package:flutter/material.dart';

import '../../data/models/charging_point_status.dart';
import 'get_charging_point_status_color.dart';

Color getChargingPointStatusBackgroundColorVariant(ChargingPointStatus status) {
  final color = getChargingPointStatusColor(status);
  return color.withOpacity(0.4);
}
