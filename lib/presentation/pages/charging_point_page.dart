import 'package:flutter/material.dart';

import '../widgets/chargin_point_page/header/charging_point_app_bar_content.dart';
import '../widgets/chargin_point_page/charging_point_page_body.dart';

class ChargingPointPage extends StatelessWidget {
  const ChargingPointPage({super.key});

  static const routeName = '/chargingPoint';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const ChargingPointAppBarContent(),
      ),
      body: const SafeArea(
        bottom: false,
        child: ChargingPointPageBody(),
      ),
    );
  }
}
