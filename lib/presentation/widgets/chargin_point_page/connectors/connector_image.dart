import 'package:flutter/material.dart';

import '../../../../core/utils/get_connector_image.dart';
import '../../../../data/models/connector_type.dart';

const double imageDimension = 60;

class ConnectorImage extends StatelessWidget {
  final ConnectorType type;
  const ConnectorImage({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final imagePath = getConnectorImagePath(type);
    return SizedBox.square(
      dimension: 80,
      child: Center(
        child: Image.asset(
          imagePath,
          width: imageDimension,
          height: imageDimension,
        ),
      ),
    );
  }
}
