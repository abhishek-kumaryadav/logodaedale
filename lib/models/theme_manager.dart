import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../common/app_themes.dart';

class ThemeManager with ChangeNotifier {
  bool _darkMode = false;
  final ThemeData _themeData =
      appThemeData[AppTheme.Default] ?? ThemeData(primarySwatch: Colors.brown);

  // Constructors
  ThemeManager() {
    // Load from shared preferences
    _loadTheme();
  }

  // Getters
  bool get darkMode {
    return _darkMode;
  }

  ThemeData get themeData {
    return _darkMode ? ThemeData.dark() : _themeData;
  }

  switchTheme() async {
    _darkMode ^= true;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool("darkMode", _darkMode);
    notifyListeners();
  }

  // setTheme(AppTheme theme) async {
  //   _themeData = appThemeData[theme]!;
  //   notifyListeners();
  // }
  void _loadTheme() async {
    debugPrint("Entered loadTheme()");
    SharedPreferences.getInstance().then((prefs) {
      _darkMode = prefs.getBool("darkMode")!;
      notifyListeners();
    });
  }
}
