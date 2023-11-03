import 'package:flutter/material.dart';

class ChargingPointIdView extends StatelessWidget {
  final String id;
  const ChargingPointIdView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final labelTextStyle =
        textTheme.bodyLarge?.copyWith(color: const Color(0xFF8A8E8F));
    final idTextStyle =
        textTheme.bodyLarge?.copyWith(color: const Color(0xFF000000));

    return Row(
      children: [
        Text('ID ЭЗС', style: labelTextStyle),
        const SizedBox(width: 4),
        Text(id, style: idTextStyle),
      ],
    );
  }
}
