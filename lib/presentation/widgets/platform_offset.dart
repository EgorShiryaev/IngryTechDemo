import 'package:flutter/widgets.dart';

import '../../core/utils/is_mobile.dart';
import '../controllers/platform_info.dart';

const mobileDefaultPadding = EdgeInsets.symmetric(horizontal: 16);

class PlatformOffset extends StatelessWidget {
  final Widget child;
  final EdgeInsets mobilePadding;
  const PlatformOffset({
    super.key,
    required this.child,
    EdgeInsets? mobilePadding,
  }) : mobilePadding = mobilePadding ?? mobileDefaultPadding;

  @override
  Widget build(BuildContext context) {
    if (PlatformInfo.of(context).isMobile) {
      return Padding(
        padding: mobilePadding,
        child: child,
      );
    }

    return Center(
      child: SizedBox(
        width: maxMobileWidth,
        child: child,
      ),
    );
  }
}
