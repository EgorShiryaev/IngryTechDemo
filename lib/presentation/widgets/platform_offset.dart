import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/platform_notifier.dart';
import 'is_mobile_indicator.dart';

class PlatformOffset extends ConsumerWidget {
  final Widget child;
  const PlatformOffset({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isMobile = ref.watch(isMobileNotifierProvider);

    if (isMobile) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
