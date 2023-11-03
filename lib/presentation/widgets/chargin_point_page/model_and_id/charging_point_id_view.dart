import 'package:flutter/material.dart';

class ChargingPointIdView extends StatelessWidget {
  final String id;
  const ChargingPointIdView({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'ID ЭЗС',
          style: TextStyle(fontSize: 15, color: Color(0xFF8A8E8F)),
        ),
        const SizedBox(width: 4),
        Text(
          id,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xFF000000),
          ),
        ),
      ],
    );
  }
}
