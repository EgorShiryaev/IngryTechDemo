import 'package:flutter/material.dart';

class RoundedNavigationBarThemeData extends NavigationBarThemeData {
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? margin;

  const RoundedNavigationBarThemeData({
    super.height,
    super.backgroundColor,
    super.elevation,
    super.shadowColor,
    super.surfaceTintColor,
    super.indicatorColor,
    super.indicatorShape,
    super.labelTextStyle,
    super.iconTheme,
    super.labelBehavior,
    this.borderRadius,
    this.margin,
  });
}
