import 'package:flutter/material.dart';

class ThemeDetails {
  static const blackColor = Color.fromRGBO(36, 36, 36, 1.0);
  static const GoldColor = Color.fromRGBO(183, 147, 95, 1.0);
  static const BlueColor = Color.fromRGBO(20, 26, 46, 1.0);
  static const YellowColor = Color.fromRGBO(250, 204, 29, 1.0);

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: const ColorScheme(
        primary: blackColor,
        onPrimary: Colors.white,
        secondary: GoldColor,
        onSecondary: Colors.brown,
        brightness: Brightness.light,
        error: Colors.red,
        onError: Colors.red,
        background: Colors.transparent,
        onBackground: Colors.transparent,
        surface: Colors.transparent,
        onSurface: Colors.transparent,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          titleTextStyle: TextStyle(
              fontSize: 30, color: blackColor, fontWeight: FontWeight.bold)),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, color: blackColor, fontWeight: FontWeight.bold)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: GoldColor,
          selectedItemColor: blackColor,
          unselectedItemColor: Colors.white));
  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
      colorScheme: const ColorScheme(
        primary: BlueColor,
        onPrimary: Colors.white,
        secondary: Colors.white,
        onSecondary: YellowColor,
        brightness: Brightness.dark,
        error: Colors.red,
        onError: Colors.red,
        background: Colors.transparent,
        onBackground: Colors.transparent,
        surface: Colors.transparent,
        onSurface: Colors.transparent,
      ),
      appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          titleTextStyle: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold)),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: BlueColor,
          selectedItemColor: YellowColor,
          unselectedItemColor: Colors.white));
}
