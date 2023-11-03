import 'package:flutter/material.dart';

import '../../data/models/charging_point_small_model.dart';

class SelectedChargingPoint extends InheritedWidget {
  final ChargingPointSmallModel model;
  const SelectedChargingPoint({
    super.key,
    required super.child,
    required this.model,
  });

  @override
  bool updateShouldNotify(covariant SelectedChargingPoint oldWidget) {
    return oldWidget.model != model;
  }

  static SelectedChargingPoint of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SelectedChargingPoint>()!;
  }
}
