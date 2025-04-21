import 'package:flutter/material.dart';
import 'package:myapp/themes/light_mode.dart'; // Ensure the correct path
import 'package:myapp/themes/dark_mode.dart'; // Ensure the correct path

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData =
      lightmode; // Start with light mode (fixed typo in naming)

  ThemeData get themeData =>
      _themeData; // Getter for theme data (fixed typo in naming)

  bool get isDarkMode =>
      _themeData == darkmode; // Check if the current theme is dark mode

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners(); // Notify listeners to rebuild UI
  }

  void toggleTheme() {
    // Toggle between light and dark mode
    if (_themeData == lightmode) {
      themeData = darkmode;
    } else {
      themeData = lightmode;
    }
  }
}
