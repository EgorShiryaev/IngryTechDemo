import 'package:flutter/material.dart';

class InfoChip extends StatelessWidget {
  final Color backgroundColor;
  final String label;
  final Color labelColor;
  const InfoChip({
    super.key,
    required this.backgroundColor,
    required this.label,
    required this.labelColor,
  });

  @override
  Widget build(BuildContext context) {
    return Ink(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(16)),
        color: backgroundColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 8),
        child: Text(
          label,
          style: TextStyle(
            fontSize: 10,
            color: labelColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
