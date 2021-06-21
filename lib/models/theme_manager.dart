import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

// final themeProvider = Provider<ThemeManager>((ref) => ThemeManager(ref.read));
final themeProvider =
    ChangeNotifierProvider<ThemeManager>((ref) => ThemeManager());
// final darkModeProvider = StateProvider<bool>((ref) {
//   return ref.watch(themeProvider).state.darkMode;
// });

class ThemeManager extends ChangeNotifier {
  bool _darkMode = false;

  // Constructors
  ThemeManager() {
    // Load from shared preferences
    _loadTheme();
    debugPrint("Running $_darkMode theme");
  }

  // Getters
  bool get darkMode {
    return _darkMode;
  }

  switchTheme() async {
    debugPrint("Entered switchTheme() with $_darkMode");
    _darkMode ^= true;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    debugPrint("Setting $_darkMode theme");
    await prefs.setBool("darkMode", _darkMode);
    debugPrint("Set ${prefs.getBool("darkMode")} theme");
    notifyListeners();
  }

  void _loadTheme() async {
    debugPrint("Entered loadTheme()");
    SharedPreferences.getInstance().then((prefs) {
      _darkMode = prefs.getBool("darkMode")!;
      notifyListeners();
      debugPrint("Loaded $_darkMode");
    });
  }
}
