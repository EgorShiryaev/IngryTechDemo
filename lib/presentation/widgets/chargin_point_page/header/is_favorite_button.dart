import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/get_icon_full_path.dart';

class IsFavoriteButton extends StatelessWidget {
  final bool isSelected;
  final ValueChanged<bool> onPress;
  const IsFavoriteButton({
    super.key,
    required this.isSelected,
    required this.onPress,
  });

  static const _borderRadius = BorderRadius.all(Radius.circular(12));

  @override
  Widget build(BuildContext context) {
    final icon = isSelected ? 'filled-heart' : 'heart';
    final colorScheme = Theme.of(context).colorScheme;
    return DecoratedBox(
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: _borderRadius,
        boxShadow: [
          BoxShadow(blurRadius: 40, color: colorScheme.shadow),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: InkWell(
          onTap: () => onPress(!isSelected),
          borderRadius: _borderRadius,
          child: Ink(
            child: SvgPicture.asset(
              getIconFullPath(icon),
              width: 32,
              height: 32,
            ),
          ),
        ),
      ),
    );
  }
}
