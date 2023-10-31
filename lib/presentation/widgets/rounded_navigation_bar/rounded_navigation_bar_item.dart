import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/enums/navigation_bar_icon.dart';
import '../../controllers/navigation_bar_notifier.dart';
import '../../themes/rounded_navigation_bar_theme_data.dart';

class RoundedNavigationBarItem extends ConsumerWidget {
  final int index;
  const RoundedNavigationBarItem({super.key, required this.index});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme =
        NavigationBarTheme.of(context) as RoundedNavigationBarThemeData;

    final isSelected = index == ref.watch(navigationBarNotifierProvider);
    final provider = ref.read(navigationBarNotifierProvider.notifier);
    final icon = NavigationBarIcon.values[index];

    final iconTheme = theme.iconTheme?.resolve({});
    return Expanded(
      child: InkWell(
        onTap: () => provider.changeIndex(index),
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: theme.borderRadius?.copyWith(
                bottomLeft: !icon.isFirst ? theme.borderRadius?.topLeft : null,
                bottomRight: !icon.isLast ? theme.borderRadius?.topRight : null,
              ),
              color: isSelected ? theme.indicatorColor : Colors.transparent,
            ),
            child: SvgPicture.asset(
              icon.fullPath,
              fit: BoxFit.none,
              width: iconTheme?.size,
              height: iconTheme?.size,
            ),
          ),
        ),
      ),
    );
  }
}
