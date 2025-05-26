import 'package:flutter/material.dart';

class AppTheme {
  static const _primaryColor = Color(0xffF35383);
  static const _backgroundColor = Color(0xff1C1F2E);
  static const _surfaceColor = Color(0xff272B40);

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    primaryColor: _primaryColor,
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(
      primary: _primaryColor,
      secondary: _primaryColor,
      surface: Colors.white,
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontFamily: 'GB',
        fontSize: 16,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'GB',
        fontSize: 14,
        color: Colors.black,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: const TextStyle(
          fontFamily: 'GB',
          fontSize: 16,
        ),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: _primaryColor,
    scaffoldBackgroundColor: _backgroundColor,
    colorScheme: ColorScheme.dark(
      primary: _primaryColor,
      secondary: _primaryColor,
      surface: _surfaceColor,
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontFamily: 'GB',
        fontSize: 16,
        color: Colors.white,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'GB',
        fontSize: 14,
        color: Colors.white,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: _primaryColor,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        textStyle: const TextStyle(
          fontFamily: 'GB',
          fontSize: 16,
        ),
      ),
    ),
  );
}
