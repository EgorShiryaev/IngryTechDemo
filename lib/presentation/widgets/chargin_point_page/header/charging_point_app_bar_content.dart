import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../controllers/charging_point_notifier.dart';
import '../../go_back_button.dart';
import 'is_favorite_button.dart';

class ChargingPointAppBarContent extends ConsumerWidget {
  const ChargingPointAppBarContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(chargingPointNotifierProvider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const GoBackButton(),
        const SizedBox(width: 12),
        Text(
          model!.location.title,
          style: const TextStyle(fontSize: 24),
        ),
        const Spacer(),
        IsFavoriteButton(
          isSelected: false,
          onPress: (value) {
            //TODO select
          },
        ),
      ],
    );
  }
}
