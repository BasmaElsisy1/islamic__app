import 'package:flutter/material.dart';

class ThemeDetails {
  static const blackColor = Color.fromRGBO(36, 36, 36, 1.0);
  static const GoldColor = Color.fromRGBO(183, 147, 95, 1.0);
  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.transparent,
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
      appBarTheme: AppBarTheme(backgroundColor: Colors.transparent));
}
