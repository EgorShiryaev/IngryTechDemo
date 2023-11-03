import 'package:flutter/material.dart';

import '../../../../core/utils/get_connector_card_width.dart';
import '../../../../data/models/connector_full_model.dart';
import 'connector_card.dart';

const double listViewHorizontalPadding = 16;
const double separatorWidth = 8;

class ConnectorsListView extends StatelessWidget {
  final List<ConnectorFullModel> connectors;
  const ConnectorsListView({super.key, required this.connectors});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView.separated(
          padding: const EdgeInsets.symmetric(
            horizontal: listViewHorizontalPadding,
          ),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final width =
                getConnectorCardWidth(constraints.maxWidth, connectors.length);

            return ConnectorCard(
              connector: connectors[index],
              width: width,
            );
          },
          separatorBuilder: (context, index) => const SizedBox(
            width: separatorWidth,
          ),
          itemCount: connectors.length,
        );
      },
    );
  }
}
