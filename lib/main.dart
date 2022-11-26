import 'package:flutter/material.dart';
import 'package:islamic/theme_details.dart';
import 'home.dart';

void main() {
  runApp(MyApplication());
}

class MyApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {HomeScreen.routeName: (context) => HomeScreen()},
      theme: ThemeDetails.lightTheme,
      darkTheme: ThemeDetails.darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}