import 'package:flutter/material.dart';

enum AppTheme {
  LightTheme,
  DarkTheme,
}

final appThemeData = {
  AppTheme.LightTheme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Color.fromARGB(255, 7, 48, 66),
  ),
  AppTheme.DarkTheme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color.fromARGB(255, 7, 48, 66),
  )
};