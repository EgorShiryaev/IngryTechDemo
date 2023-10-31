import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../controllers/navigation_bar_notifier.dart';
import 'rounded_navigation_bar_item.dart';

class RoundedNavigationBar extends ConsumerWidget {
  const RoundedNavigationBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navigationBarNotifierProvider);
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
              for (var i = 0; i < 4; i++)
                RoundedNavigationBarItem(
                  isSelected: i == selectedIndex,
                  isFirst: selectedIndex == 0,
                  isLast: selectedIndex == 3,
                  onPress: () => {
                    ref
                        .read(navigationBarNotifierProvider.notifier)
                        .changeIndex(i)
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }
}
