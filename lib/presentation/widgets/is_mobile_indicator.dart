import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/platform_notifier.dart';

const maxMobileWidth = 950;

class IsMobileIndicator extends ConsumerWidget {
  final Widget child;
  const IsMobileIndicator({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isMobile = constraints.maxWidth <= maxMobileWidth;

        if (isMobile != ref.watch(isMobileNotifierProvider)) {
          ref.read(isMobileNotifierProvider.notifier).change(isMobile);
        }

        return child;
      },
    );
  }
}
