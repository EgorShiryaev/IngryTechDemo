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
    final textTheme = Theme.of(context).textTheme;
    final labelTextStyle = textTheme.bodyLarge?.copyWith(
      color: const Color(0xFF8A8E8F),
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
