import 'package:flutter/material.dart';

import '../../data/models/connector_status.dart';

Color getConnectorStatusForegroundColor(ConnectorStatus status) {
  switch (status) {
    case ConnectorStatus.available:
      return const Color(0xFF00783C);
    case ConnectorStatus.preparing:
    case ConnectorStatus.unavailable:
    case ConnectorStatus.finishing:
    case ConnectorStatus.faulted:
      return const Color(0xFFAA1A26);
    case ConnectorStatus.charging:
    case ConnectorStatus.suspendedevse:
    case ConnectorStatus.suspendedev:
    case ConnectorStatus.occupied:
      return const Color(0xFFB76E00);
    case ConnectorStatus.reserved:
      return const Color(0xFF1939B7);
  }
}
