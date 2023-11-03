import 'package:flutter/material.dart';

class PlatformInfo extends InheritedWidget {
  final bool isMobile;
  const PlatformInfo({
    super.key,
    required super.child,
    required this.isMobile,
  });

  @override
  bool updateShouldNotify(covariant PlatformInfo oldWidget) {
    return oldWidget.isMobile != isMobile;
  }

  static PlatformInfo of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PlatformInfo>()!;
  }
}
