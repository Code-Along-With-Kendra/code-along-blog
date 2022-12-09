import 'package:code_along/src/app.dart';
import 'package:code_along/src/constants/color_themes.dart';
import 'package:code_along/src/constants/text_styling.dart';
import 'package:flutter/material.dart';

class IconToggleButton extends StatefulWidget {
  final List<Widget> icons;

  const IconToggleButton({required this.icons, super.key});

  @override
  State<IconToggleButton> createState() => _IconToggleButtonState();
}

class _IconToggleButtonState extends State<IconToggleButton> {
  final List<bool> _selectedThemeIcon = <bool>[true, false, false];
  final List<String> _selectedThemeNames = <String>[
    'System Theme',
    'Light Mode',
    'Dark Mode'
  ];

  String _selectedTheme = 'System Theme';

  final List _themeNotifierNameList = [
    ThemeMode.system,
    ThemeMode.light,
    ThemeMode.dark
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
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
                    MyApp.themeNotifier.value = _themeNotifierNameList[i];
                  }
                }
              });
            },
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            selectedBorderColor: ColorThemes.settingsSelectedBorderColor,
            selectedColor: ColorThemes.settingsSelectedColor,
            fillColor: ColorThemes.settingsFillColor,
            color: ColorThemes.settingsColor,
            isSelected: _selectedThemeIcon,
            children: widget.icons,
          ),
          Text(
            _selectedTheme,
            style: TextStyles.cardSubTitle,
          ),
        ],
      ),
    );
  }
}
