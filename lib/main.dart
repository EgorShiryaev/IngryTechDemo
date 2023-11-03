import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'presentation/pages/charging_point_page.dart';
import 'presentation/pages/home_page.dart';
import 'presentation/themes/app_theme.dart';
import 'presentation/widgets/is_mobile_indicator.dart';

void main() {
  runApp(
    const ProviderScope(
      child: IsMobileIndicator(
        child: App(),
      ),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
        ChargingPointPage.routeName: (context) => const ChargingPointPage(),
      },
      initialRoute: HomePage.routeName,
    );
  }
}
