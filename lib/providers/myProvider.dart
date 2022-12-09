import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String language = 'ar';
  ThemeMode themeMode = ThemeMode.light;

  void changeLanguage(String languageCode) {
    language = languageCode;
    notifyListeners();
  }

  void changeTheme(ThemeMode mode) {
    themeMode = mode;
    notifyListeners();
  }

  String getBackground() {
    if (themeMode == ThemeMode.light) {
      return 'assets/images/background.png';
    } else {
      return 'assets/images/background-dark.png';
    }
  }
}
