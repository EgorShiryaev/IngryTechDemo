import 'package:flutter/material.dart';

class ChargingPointInfoField extends StatelessWidget {
  final String label;
  final Widget data;
  const ChargingPointInfoField({
    super.key,
    required this.label,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final labelTextStyle = theme.textTheme.bodyLarge?.copyWith(
      color: theme.colorScheme.outline,
    );

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 120,
          child: Text(label, style: labelTextStyle),
        ),
        const SizedBox(width: 20),
        Expanded(child: data),
      ],
    );
  }
}
