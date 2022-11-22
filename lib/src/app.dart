import 'package:code_along/src/app/shared/page_template.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4),
          useMaterial3: true,
        ),
        home: const PageTemplate());
  }
}
