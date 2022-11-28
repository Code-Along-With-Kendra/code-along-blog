import 'package:flutter/material.dart';

class ColorThemes {
  static const systemColor = Colors.pink;
  static const systemSecondaryColor = Colors.white;

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorSchemeSeed: systemColor,
  );
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    colorSchemeSeed: systemColor,
  );
  static final settingsSelectedBorderColor = Colors.pink[700];
  static const settingsSelectedColor = systemColor;
  static final settingsFillColor = Colors.pink[200];
  static final settingsColor = Colors.pink[400];
}
