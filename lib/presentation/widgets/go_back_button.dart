import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/utils/get_icon_full_path.dart';

class GoBackButton extends StatelessWidget {
  const GoBackButton({super.key});

  static const _borderRadius = BorderRadius.all(Radius.circular(12));

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Color.fromARGB(18, 75, 75, 75),
        borderRadius: _borderRadius,
      ),
      child: InkWell(
        onTap: () => Navigator.pop(context),
        borderRadius: _borderRadius,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Ink(
            child: SvgPicture.asset(
              getIconFullPath('arrow-left'),
            ),
          ),
        ),
      ),
    );
  }
}
