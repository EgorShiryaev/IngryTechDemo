import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core/utils/is_mobile.dart';
import '../controllers/platform_info.dart';

class IsMobileIndicator extends ConsumerWidget {
  final Widget child;
  const IsMobileIndicator({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return PlatformInfo(
          isMobile: isMobile(constraints.maxWidth),
          child: child,
        );
      },
    );
  }
}
