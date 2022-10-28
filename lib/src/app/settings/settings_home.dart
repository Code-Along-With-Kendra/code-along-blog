import 'package:code_along/src/app/shared/page_template.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageTemplate(
      pageContents: Center(child: Text('Settings')),
    );
  }
}
