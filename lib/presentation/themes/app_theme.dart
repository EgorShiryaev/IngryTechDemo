import 'package:flutter/material.dart';

import 'rounded_navigation_bar_theme_data.dart';

class AppTheme {
  static ThemeData get light {
    const textTheme = TextTheme(
      headlineSmall: TextStyle(
        fontSize: 24,
        overflow: TextOverflow.ellipsis,
        fontWeight: FontWeight.normal,
        letterSpacing: 0,
      ),
      titleSmall: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
      ),
      bodyLarge: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.normal,
        letterSpacing: 0,
      ),
      bodyMedium: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        letterSpacing: 0,
      ),
      bodySmall: TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.normal,
        letterSpacing: 0,
      ),
      labelMedium: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
      ),
      labelSmall: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
      ),
    );
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
        foregroundColor: Color(0xFF000000),
        centerTitle: false,
      ),
      searchBarTheme: SearchBarThemeData(
        elevation: const MaterialStatePropertyAll(0),
        backgroundColor: const MaterialStatePropertyAll(Color(0xFFF5F5F5)),
        constraints: const BoxConstraints.expand(height: 40),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
        hintStyle: MaterialStatePropertyAll(
          textTheme.bodyMedium?.copyWith(color: const Color(0xFF8A8E8F)),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12),
        ),
      ),
      cardTheme: const CardTheme(
        color: Color(0xFFF5F5F5),
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
      textTheme: textTheme,
    );
  }
}
