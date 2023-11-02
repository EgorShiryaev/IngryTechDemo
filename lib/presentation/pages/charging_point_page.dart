import 'package:flutter/material.dart';

import '../widgets/chargin_point_page/is_favorite_button.dart';
import '../widgets/go_back_button.dart';
import 'args/charging_point_page_args.dart';

class ChargingPointPage extends StatelessWidget {
  const ChargingPointPage({super.key});

  static const routeName = '/chargingPoint';

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as ChargingPointPageArgs;

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const GoBackButton(),
            const SizedBox(width: 12),
            Text(
              args.model.location.title,
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
      body: Center(
        child: Text(args.model.id),
      ),
    );
  }
}
