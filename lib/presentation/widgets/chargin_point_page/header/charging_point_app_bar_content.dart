import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/utils/is_favorite.dart';
import '../../../controllers/charging_point_notifier.dart';
import '../../../controllers/favorite_charging_points_notifier.dart';
import '../../go_back_button.dart';
import 'is_favorite_button.dart';

class ChargingPointAppBarContent extends ConsumerWidget {
  const ChargingPointAppBarContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final model = ref.watch(chargingPointNotifierProvider);
    final favoritePoints = ref.watch(favoriteChargingPointsNotifier);
    final provider = ref.read(favoriteChargingPointsNotifier.notifier);

    final textTheme = Theme.of(context).textTheme;
    final titleTextStyle = textTheme.headlineSmall;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const GoBackButton(),
        const SizedBox(width: 12),
        Expanded(
          child: Text(model!.location.title, style: titleTextStyle),
        ),
        IsFavoriteButton(
          isSelected: isFavorite(favoritePoints, model.id),
          onPress: (newValue) {
            if (newValue) {
              provider.makeFavorite(model.id);
            } else {
              provider.makeUnfavorite(model.id);
            }
          },
        ),
      ],
    );
  }
}
