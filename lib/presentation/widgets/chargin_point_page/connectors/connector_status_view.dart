import 'package:flutter/material.dart';

import '../../../../core/utils/get_connector_status_background_color.dart';
import '../../../../core/utils/get_connector_status_foreground_color.dart';
import '../../../../data/models/connector_status.dart';

class ConnectorStatusView extends StatelessWidget {
  final ConnectorStatus status;
  const ConnectorStatusView({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    final foregroundColor = getConnectorStatusForegroundColor(status);
    final backgroundColor = getConnectorStatusBackgroundColor(status);

    final textTheme = Theme.of(context).textTheme;
    final descriptionTextStyle =
        textTheme.labelMedium?.copyWith(color: const Color(0xFF8A8E8F));
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 4),
        child: Text(
          status.description,
          style: descriptionTextStyle?.copyWith(color: foregroundColor),
        ),
      ),
    );
  }
}
