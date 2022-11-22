import 'package:code_along/src/constants/component_styling.dart';
import 'package:code_along/src/constants/text_styling.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
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
              ThemeToggleButton(),
            ],
          ),
        ),
      ),
    );
  }
}

const List<Widget> icons = <Widget>[
  Icon(Icons.computer),
  Icon(Icons.light_mode),
  Icon(Icons.dark_mode),
];

class ThemeToggleButton extends StatefulWidget {
  const ThemeToggleButton({super.key});

  @override
  State<ThemeToggleButton> createState() => _ThemeToggleButtonState();
}

class _ThemeToggleButtonState extends State<ThemeToggleButton> {
  final List<bool> _selectedThemeIcon = <bool>[true, false, false];
  final List<String> _selectedThemeNames = <String>[
    'System Theme',
    'Light Mode',
    'Dark Mode'
  ];
  String _selectedTheme = 'System Theme';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        // ToggleButtons with icons only.
        const SizedBox(height: 5),
        ToggleButtons(
          direction: Axis.horizontal,
          onPressed: (int index) {
            setState(() {
              // The button that is tapped is set to true, and the others to false.
              for (int i = 0; i < _selectedThemeIcon.length; i++) {
                _selectedThemeIcon[i] = i == index;
                if (i == index) {
                  _selectedTheme = _selectedThemeNames[i];
                }
              }
            });
          },
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          selectedBorderColor: Colors.pink[700],
          selectedColor: Colors.pink,
          fillColor: Colors.pink[200],
          color: Colors.pink[400],
          isSelected: _selectedThemeIcon,
          children: icons,
        ),
        Text(_selectedTheme, style: TextStyles.cardSubTitle),
      ],
    );
  }
}
