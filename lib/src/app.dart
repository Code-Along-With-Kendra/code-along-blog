import 'package:code_along/src/app/shared/page_template.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.system);

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'CodeAlong.IO',
            theme: ThemeData(primarySwatch: Colors.pink),
            darkTheme: ThemeData.dark(),
            themeMode: currentMode,
            home: const PageTemplate(),
          );
        });
  }
}
