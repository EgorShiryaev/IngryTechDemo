import 'package:flutter/widgets.dart';

import '../../../core/utils/get_cp_type_avatar_background_color.dart';

class ChargingPointAvatar extends StatelessWidget {
  final String cpType;
  const ChargingPointAvatar({super.key, required this.cpType});

  @override
  Widget build(BuildContext context) {
    final color = getCpTypeAvatarBackgroundColor(cpType);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: SizedBox.square(
        dimension: 40,
        child: Center(
          child: Text(
            cpType.toUpperCase(),
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
