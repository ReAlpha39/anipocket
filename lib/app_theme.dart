import 'package:flutter/material.dart';

enum AppTheme {
  LightTheme,
  DarkTheme,
}

final appThemeData = {
  AppTheme.LightTheme: ThemeData(
    brightness: Brightness.light,
    primaryColor: Color.fromARGB(255, 7, 48, 66),
    appBarTheme: AppBarTheme(color: Color.fromARGB(255, 7, 48, 66)),
  ),
  AppTheme.DarkTheme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Color.fromARGB(255, 7, 48, 66),
    primaryColorDark: Colors.grey[900],
    accentColor: Colors.indigo[700],
    appBarTheme: AppBarTheme(color: Color.fromARGB(255, 7, 48, 66)),
    canvasColor: Colors.grey[900]

  )
};