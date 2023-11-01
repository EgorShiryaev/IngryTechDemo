import 'package:flutter/material.dart';

Color getCpTypeAvatarBackgroundColor(String cpType) {
  switch (cpType) {
    case 'ac':
      return const Color(0xFF00A24D);
    case 'dc':
      return const Color(0xFFF45C33);
    default:
      return Colors.brown;
  }
}
