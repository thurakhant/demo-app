import 'package:flutter/material.dart';

class ThemeController extends ChangeNotifier {
  // Default ko light mode
  ThemeMode _themeMode = ThemeMode.light;

  // view mar pyn u thone mat kaung
  ThemeMode get themeMode => _themeMode;

  //
  bool get isDarkMode => _themeMode == ThemeMode.dark;

  void toogleTheme(bool isOn) {
    _themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
