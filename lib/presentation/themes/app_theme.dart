import 'package:flutter/material.dart';

import 'rounded_navigation_bar_theme_data.dart';

class AppTheme {
  static ThemeData get light {
    return ThemeData(
      scaffoldBackgroundColor: const Color(0xFFFFFFFF),
      fontFamily: 'Roboto',
      navigationBarTheme: const RoundedNavigationBarThemeData(
        height: 90,
        backgroundColor: Color(0xFFE1E000),
        indicatorColor: Color(0xFFEBEA00),
        iconTheme: MaterialStatePropertyAll(
          IconThemeData(size: 32, color: Color(0xFF000000)),
        ),
        indicatorShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        margin: EdgeInsets.fromLTRB(8, 0, 8, 8),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15),
          bottom: Radius.circular(40),
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
      ),
      searchBarTheme: const SearchBarThemeData(
        elevation: MaterialStatePropertyAll(0),
        backgroundColor: MaterialStatePropertyAll(Color(0xFFF5F5F5)),
        constraints: BoxConstraints.expand(height: 40),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
        hintStyle: MaterialStatePropertyAll(
          TextStyle(fontSize: 14, color: Color(0xFF8A8E8F)),
        ),
        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(horizontal: 12)),
      ),
    );
  }
}
