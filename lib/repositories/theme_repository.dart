import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class BaseThemeRepository {
  Future<bool> getState();
  Future<void> switchState();
  Future<void> setMode(bool _darkMode);
}

final themeRepositoryProvider =
    Provider<ThemeRepository>((ref) => ThemeRepository(ref.read));

class ThemeRepository implements BaseThemeRepository {
  final Reader _read;
  const ThemeRepository(this._read);

  @override
  Future<bool> getState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _darkMode = prefs.getBool("darkMode")!;
    // debugPrint("Getting theme: $_darkMode");
    return _darkMode;
  }

  @override
  Future<void> setMode(bool _darkMode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // debugPrint("Setting $_darkMode theme");
    await prefs.setBool("darkMode", _darkMode);
    debugPrint("Set ${prefs.getBool("darkMode")} theme");
  }

  @override
  Future<void> switchState() async {
    bool _darkMode = await getState();
    // debugPrint("Entered switchTheme() with $_darkMode");
    _darkMode ^= true;
    setMode(_darkMode);
  }
}
