import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logodaedale/models/theme_model.dart';
import 'package:logodaedale/repositories/theme_repository.dart';

final themeControllerProvider =
    StateNotifierProvider<ThemeController, bool>((ref) {
  return ThemeController(ref.read)..retrieveMode();
});

class ThemeController extends StateNotifier<bool> {
  final Reader _read;
  ThemeController(this._read) : super(false);
  Future<void> retrieveMode() async {
    try {
      final bool _darkMode = await _read(themeRepositoryProvider).getState();
      state = _darkMode;
      // debugPrint("Controller Prints, Sets: $_darkMode, $state");
    } on Exception {
      state = false;
    }
  }

  Future<void> switchTheme() async {
    try {
      await _read(themeRepositoryProvider).switchState();
      retrieveMode();
    } on Exception {
      state = false;
    }
  }
}
