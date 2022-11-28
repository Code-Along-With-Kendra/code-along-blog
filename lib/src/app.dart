import 'package:code_along/src/app/shared/page_template.dart';
import 'package:code_along/src/constants/color_themes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);
  static final ValueNotifier<String> themeName = ValueNotifier("System Theme");

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'CodeAlong.IO',
            theme: ColorThemes.lightTheme,
            darkTheme: ColorThemes.darkTheme,
            themeMode: currentMode,
            home: const PageTemplate(),
          );
        });
  }
}
