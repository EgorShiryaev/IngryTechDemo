import 'package:flutter/material.dart';
import '../../../core/enums/navigation_bar_icon.dart';
import '../../themes/rounded_navigation_bar_theme_data.dart';
import '../platform_offset.dart';
import 'rounded_navigation_bar_item.dart';

class RoundedNavigationBar extends StatelessWidget {
  const RoundedNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final theme =
        NavigationBarTheme.of(context) as RoundedNavigationBarThemeData;
    return Padding(
      padding: theme.margin ?? EdgeInsets.zero,
      child: ClipRRect(
        borderRadius: theme.borderRadius ?? BorderRadius.zero,
        child: ColoredBox(
          color: theme.backgroundColor ?? Colors.transparent,
          child: SizedBox(
            height: theme.height,
            child: PlatformOffset(
              mobilePadding: EdgeInsets.zero,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  for (var i = 0; i < NavigationBarIcon.values.length; i++)
                    RoundedNavigationBarItem(index: i),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
