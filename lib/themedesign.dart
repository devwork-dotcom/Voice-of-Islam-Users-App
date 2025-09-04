import 'dart:ui';

import 'package:flutter/material.dart';

class ThemeClass{

  Color lightPrimaryColor = Color(0xFFDF0054);
  Color darkPrimaryColor = Color(0xf33f1111);
  Color secondaryColor = Color(0xFF4d3fff);
  Color accentColor = Color(0xFFDF0054);

  static ThemeData lightTheme = ThemeData(
    primaryColor:ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: _themeClass.lightPrimaryColor,
      secondary: _themeClass.secondaryColor,

    ),

  );

  static ThemeData darkTheme = ThemeData(
    primaryColor:ThemeData.light().scaffoldBackgroundColor,
    colorScheme: const ColorScheme.light().copyWith(
      primary: _themeClass.darkPrimaryColor,
      secondary: _themeClass.secondaryColor,
    ),
  );
}



ThemeClass _themeClass = ThemeClass();