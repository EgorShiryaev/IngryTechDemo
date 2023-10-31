import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/navigation_stack.dart';
import '../widgets/rounded_navigation_bar/rounded_navigation_bar.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Scaffold(
      body: NavigationStack(),
      bottomNavigationBar: RoundedNavigationBar(),
    );
  }
}
