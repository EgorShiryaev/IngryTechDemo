import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/enums/navigation_bar_icon.dart';
import '../../controllers/navigation_bar_notifier.dart';

const double iconSize = 32;

class RoundedNavigationBarItem extends ConsumerWidget {
  final int index;
  const RoundedNavigationBarItem({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = index == ref.watch(navigationBarNotifierProvider);
    final provider = ref.read(navigationBarNotifierProvider.notifier);
    final currentIcon = NavigationBarIcon.values[index];
    return Expanded(
      child: InkWell(
        onTap: () => provider.changeIndex(index),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: const Radius.circular(15),
                topRight: const Radius.circular(15),
                bottomLeft: Radius.circular(currentIcon.isFirst ? 40 : 15),
                bottomRight: Radius.circular(currentIcon.isLast ? 40 : 15),
              ),
              color: isSelected ? const Color(0xFFEBEA00) : Colors.transparent,
            ),
            child: SvgPicture.asset(
              currentIcon.fullPath,
              fit: BoxFit.none,
              width: iconSize,
              height: iconSize,
            ),
          ),
        ),
      ),
    );
  }
}
