import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/navigation_bar_notifier.dart';
import '../pages/filter_page.dart';
import '../pages/list_page.dart';
import '../pages/map_page.dart';
import '../pages/user_page.dart';

class NavigationStack extends ConsumerWidget {
  const NavigationStack({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(navigationBarNotifierProvider);
    return IndexedStack(
      index: selectedIndex,
      children: const [
        MapPage(),
        ListPage(),
        FilterPage(),
        ProfilePage(),
      ],
    );
  }
}
