import 'package:flutter/material.dart';

import '../widgets/rounded_navigation_bar/rounded_navigation_bar.dart';

import 'home_tab_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeTabPage(),
      bottomNavigationBar: RoundedNavigationBar(),
    );
  }
}
