import 'package:code_along/src/app.dart';
import 'package:code_along/src/constants/color_themes.dart';
import 'package:code_along/src/constants/text_styling.dart';
import 'package:flutter/material.dart';

class IconToggleButton extends StatefulWidget {
  final List<Widget> icons;
  final List<bool> selectedList;
  final List<String> selectedDisplayName;
  final List notifierList;
  final String defaultSetting;

  const IconToggleButton(
      {required this.icons,
      required this.selectedList,
      required this.selectedDisplayName,
      required this.notifierList,
      required this.defaultSetting,
      super.key});

  @override
  State<IconToggleButton> createState() => _IconToggleButtonState();
}

class _IconToggleButtonState extends State<IconToggleButton> {
  late String _selectedTheme = widget.defaultSetting;

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
                for (int i = 0; i < widget.selectedList.length; i++) {
                  widget.selectedList[i] = i == index;
                  if (i == index) {
                    _selectedTheme = widget.selectedDisplayName[i];
                    MyApp.themeNotifier.value = widget.notifierList[i];
                  }
                }
              });
            },
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            selectedBorderColor: ColorThemes.settingsSelectedBorderColor,
            selectedColor: ColorThemes.settingsSelectedColor,
            fillColor: ColorThemes.settingsFillColor,
            color: ColorThemes.settingsColor,
            isSelected: widget.selectedList,
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
