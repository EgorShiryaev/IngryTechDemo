import 'package:flutter/material.dart';

import '../../data/models/connector_status.dart';

Color getConnectorStatusBackgroundColor(ConnectorStatus status) {
  switch (status) {
    case ConnectorStatus.available:
      return const Color.fromRGBO(0, 171, 85, 0.16);
    case ConnectorStatus.preparing:
    case ConnectorStatus.unavailable:
    case ConnectorStatus.finishing:
    case ConnectorStatus.faulted:
      return const Color.fromRGBO(238, 39, 55, 0.16);
    case ConnectorStatus.charging:
    case ConnectorStatus.suspendedevse:
    case ConnectorStatus.suspendedev:
    case ConnectorStatus.occupied:
      return const Color.fromRGBO(255, 171, 0, 0.16);
    case ConnectorStatus.reserved:
      return const Color.fromRGBO(51, 157, 255, 0.16);
  }
}
