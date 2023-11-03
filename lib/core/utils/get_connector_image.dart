import '../../data/models/connector_type.dart';

const _basePath = 'assets/images';

String getConnectorImagePath(ConnectorType type) {
  var filename = 'unknowed_connector';
  switch (type) {
    case ConnectorType.chademo:
      filename = 'chademo_connector';
      break;
    case ConnectorType.iec62196t2combo:
      filename = 'ccs2_connector';
      break;
    case ConnectorType.iec62196t2:
      filename = 'type2_connector';
      break;
    case ConnectorType.iec62196t1:
    case ConnectorType.iec62196t1combo:
    case ConnectorType.gbtDc:
    case ConnectorType.domesticC:
    case ConnectorType.other:
      filename = 'unknowed_connector';
      break;
  }
  return '$_basePath/$filename.png';
}
