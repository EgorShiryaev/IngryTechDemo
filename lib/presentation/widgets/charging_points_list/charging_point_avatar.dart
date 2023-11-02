import 'package:flutter/widgets.dart';

import '../../../core/utils/get_cp_type_avatar_background_color.dart';

class ChargingPointAvatar extends StatelessWidget {
  final String type;
  final double size;
  const ChargingPointAvatar({
    super.key,
    required this.type,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    final color = getCpTypeAvatarBackgroundColor(type);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(size / 5),
      ),
      child: SizedBox.square(
        dimension: size,
        child: Center(
          child: Text(
            type.toUpperCase(),
            style: TextStyle(fontSize: size / 2),
          ),
        ),
      ),
    );
  }
}
