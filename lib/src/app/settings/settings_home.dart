import 'package:code_along/src/app/shared/icon_toggle_button.dart';
import 'package:code_along/src/constants/component_styling.dart';
import 'package:code_along/src/constants/text_styling.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  static const List<Widget> _icons = <Widget>[
    Icon(Icons.computer),
    Icon(Icons.light_mode),
    Icon(Icons.dark_mode),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Theme Settings',
                  style: TextStyles.cardHeader,
                ),
              ),
              ComponentStyles.standardDivider,
              IconToggleButton(icons: _icons),
            ],
          ),
        ),
      ),
    );
  }
}
