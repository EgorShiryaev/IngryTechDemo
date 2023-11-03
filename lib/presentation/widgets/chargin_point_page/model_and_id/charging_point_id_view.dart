import 'package:flutter/material.dart';

class ChargingPointIdView extends StatelessWidget {
  final String id;
  const ChargingPointIdView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final labelTextStyle =
        theme.textTheme.bodyLarge?.copyWith(color: theme.colorScheme.outline);
    final idTextStyle = theme.textTheme.bodyLarge
        ?.copyWith(color: theme.colorScheme.onBackground);

    return Row(
      children: [
        Text('ID ЭЗС', style: labelTextStyle),
        const SizedBox(width: 4),
        Text(id, style: idTextStyle),
      ],
    );
  }
}
