import 'package:flutter/material.dart';

import 'rounded_navigation_bar_theme_data.dart';

class AppTheme {
  static ThemeData get light {
    const colorScheme = ColorScheme.light(
      background: Color(0xFFFFFFFF),
      onBackground: Color(0xFF000000),
      primary: Color(0xFFE1E000),
      primaryContainer: Color(0xFFEBEA00),
      surface: Color(0xFFFFFFFF),
      onSurface: Color(0xFF000000),
      shadow: Color.fromARGB(20, 0, 0, 0),
      surfaceVariant: Color(0xFFF5F5F5),
      outline: Color(0xFF8A8E8F),
      outlineVariant: Color(0x204B4B4B),
    );
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
      scaffoldBackgroundColor: colorScheme.background,
      fontFamily: 'Roboto',
      navigationBarTheme: RoundedNavigationBarThemeData(
        height: 90,
        backgroundColor: colorScheme.primary,
        indicatorColor: colorScheme.primaryContainer,
        iconTheme: MaterialStatePropertyAll(
          IconThemeData(size: 32, color: colorScheme.onSurface),
        ),
        indicatorShape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        margin: const EdgeInsets.fromLTRB(8, 0, 8, 8),
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(15),
          bottom: Radius.circular(40),
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: colorScheme.background,
        foregroundColor: colorScheme.onBackground,
        elevation: 0,
        centerTitle: false,
      ),
      searchBarTheme: SearchBarThemeData(
        elevation: const MaterialStatePropertyAll(0),
        backgroundColor: MaterialStatePropertyAll(
          colorScheme.surfaceVariant,
        ),
        constraints: const BoxConstraints.expand(height: 40),
        shape: const MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16)),
          ),
        ),
        hintStyle: MaterialStatePropertyAll(
          textTheme.bodyMedium?.copyWith(color: colorScheme.outline),
        ),
        padding: const MaterialStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 12),
        ),
      ),
      cardTheme:  CardTheme(
        color:  colorScheme.surfaceVariant,
        elevation: 0,
        margin: EdgeInsets.zero,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
      ),
      textTheme: textTheme,
      colorScheme: colorScheme,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: colorScheme.primary,
      ),
    );
  }
}
