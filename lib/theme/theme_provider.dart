import 'package:flutter/material.dart';
import 'package:kiratiapp/theme/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMode;
  bool _isDarkTheme = true;

  ThemeProvider();

  ThemeData get themeData => _themeData;
  bool get isDarkTheme => _isDarkTheme;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // Toggle the theme and save the preference
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
      _isDarkTheme = true;
    } else {
      themeData = lightMode;
      _isDarkTheme = false;
    }
    // _saveTheme(); // Save the theme setting after toggling
  }

  // // Save the theme preference in shared preferences
  // Future<void> _saveTheme() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setBool('isDarkTheme', _isDarkTheme); // Save the current theme mode
  // }
  //
  // // Load the theme preference from shared preferences
  // Future<void> loadTheme() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   _isDarkTheme = prefs.getBool('isDarkTheme') ?? true; // Default to dark mode if no preference is saved
  //   _themeData = _isDarkTheme ? darkMode : lightMode;
  //   notifyListeners(); // Notify listeners when the theme is loaded
  // }
}
