import 'package:flutter/material.dart';
import '../../../core/enums/navigation_bar_icon.dart';
import 'rounded_navigation_bar_item.dart';

class RoundedNavigationBar extends StatelessWidget {
  const RoundedNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8).copyWith(bottom: 8),
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
          bottom: Radius.circular(40),
        ),
        child: ColoredBox(
          color: const Color(0xFFE1E000),
          child: Row(
            children: [
              for (var i = 0; i < NavigationBarIcon.values.length; i++)
                RoundedNavigationBarItem(index: i),
            ],
          ),
        ),
      ),
    );
  }
}
