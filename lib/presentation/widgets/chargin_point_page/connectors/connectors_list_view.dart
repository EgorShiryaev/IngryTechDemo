import 'package:flutter/material.dart';

import '../../../../data/models/connector_full_model.dart';
import 'connector_card.dart';

class ConnectorsListView extends StatelessWidget {
  final List<ConnectorFullModel> connectors;
  const ConnectorsListView({super.key, required this.connectors});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return ConnectorCard(
              connector: connectors[index],
              width: constraints.maxWidth / connectors.length -
                  (8 * connectors.length - 1),
            );
          },
          separatorBuilder: (context, index) => const SizedBox(width: 8),
          itemCount: connectors.length,
        );
      },
    );
  }
}
