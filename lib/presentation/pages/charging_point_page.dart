import 'package:flutter/material.dart';

import '../../mock/charging_point_full_model_mock.dart';
import '../widgets/chargin_point_page/is_favorite_button.dart';
import '../widgets/chargin_point_page/status_chip.dart';
import '../widgets/go_back_button.dart';
import '../widgets/platform_offset.dart';
import 'args/charging_point_page_args.dart';

class ChargingPointPage extends StatelessWidget {
  const ChargingPointPage({super.key});

  static const routeName = '/chargingPoint';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ChargingPointPageArgs;

    final model = chargingPointFullModelMock;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const GoBackButton(),
            const SizedBox(width: 12),
            Text(
              model.location.title,
              style: const TextStyle(fontSize: 24),
            ),
            const Spacer(),
            IsFavoriteButton(
              isSelected: false,
              onPress: (value) {},
            ),
          ],
        ),
      ),
      body: PlatformOffset(
        child: ListView(
          children: [
            Row(children: [StatusChip(status: model.status)]),
          ],
        ),
      ),
    );
  }
}
