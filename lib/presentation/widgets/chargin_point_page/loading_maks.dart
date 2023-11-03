import 'package:flutter/material.dart';

class LoadingMask extends StatelessWidget {
  const LoadingMask({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: Color(0x88FFFFFF),
      child: Center(
        child: CircularProgressIndicator(
          color: Color(0xFFE1E000),
        ),
      ),
    );
  }
}
