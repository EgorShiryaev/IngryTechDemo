import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/get_icon_full_path.dart';
import '../../../../core/utils/is_favorite.dart';
import '../../../controllers/favorite_charging_points_notifier.dart';

class FavoriteIconView extends ConsumerWidget {
  final String id;
  const FavoriteIconView({required this.id, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritePoints = ref.watch(favoriteChargingPointsNotifier);

    if (!isFavorite(favoritePoints, id)) {
      return const SizedBox();
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SvgPicture.asset(
        getIconFullPath('filled-heart'),
        width: 20,
      ),
    );
  }
}
