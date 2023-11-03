import 'package:flutter/material.dart';

import '../../../../core/utils/convert_price_to_text.dart';
import '../../../../data/models/connector_full_model.dart';
import '../../../../data/models/connector_type.dart';
import 'connector_image.dart';
import 'connector_status_view.dart';

const double _minWidth = 140;

class ConnectorCard extends StatelessWidget {
  final ConnectorFullModel connector;
  final double width;
  const ConnectorCard({
    super.key,
    required this.connector,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    final priceText = convertPriceToText(connector.chargingTariff.price);
    final isFree = connector.chargingTariff.price == 0;
    final parkingPriceText = isFree ? 'Бесплатно' : '$priceText₽/кВт*ч';

    final textTheme = Theme.of(context).textTheme;
    final idTextStyle =
        textTheme.labelMedium?.copyWith(color: const Color(0xFF8A8E8F));
    final priceTextStyle =
        textTheme.bodySmall?.copyWith(color: const Color(0xFF000000));
    final descriptionTextStyle = textTheme.titleSmall?.copyWith(
      color: const Color(0xFF000000),
      fontWeight: FontWeight.w500,
    );
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: const Color(0xFFDEDEDE)),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: _minWidth >= width ? _minWidth : width,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 8,
              ),
              child: Column(
                children: [
                  ConnectorStatusView(status: connector.status),
                  const SizedBox(height: 8),
                  ConnectorImage(type: connector.type),
                  const SizedBox(height: 8),
                  Text('ID ${connector.number}', style: idTextStyle),
                  Text(connector.type.description, style: descriptionTextStyle),
                  const SizedBox(height: 8),
                  Text(parkingPriceText, style: priceTextStyle),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
