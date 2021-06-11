import 'package:flutter/material.dart';

enum AppTheme { Default, Dark }

String enumName(AppTheme anyEnum) {
  return anyEnum.toString().split('.')[1];
}

final appThemeData = {
  AppTheme.Default: ThemeData(
    primarySwatch: Colors.brown,
  ),
  AppTheme.Dark: ThemeData.dark(),
};
