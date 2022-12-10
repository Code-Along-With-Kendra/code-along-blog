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
  List<Map<String, dynamic>> themes = [
    {
      'theme': ThemeMode.system,
      'name': 'System Theme',
      'selected': true, // this signifies it's displayed as default
      'icon': const Icon(Icons.computer),
    },
    {
      'theme': ThemeMode.dark,
      'name': 'Dark Mode',
      'selected': false,
      'icon': const Icon(Icons.dark_mode),
    },
    {
      'theme': ThemeMode.light,
      'name': 'Light Mode',
      'selected': false,
      'icon': const Icon(Icons.light_mode),
    }
  ];

  @override
  Widget build(BuildContext context) {
    createSubset(List maps, int idx, String key) => maps[idx][key];

    List<dynamic> listOfItems(List inputList, List outputList, String key) {
      for (var i = 0; i < inputList.length; i++) {
        outputList.add(createSubset(inputList, i, key));
      }
      return outputList;
    }

    List<Widget> icons = [];
    List<String> themeNames = [];
    List<bool> selectedList = [];
    List<ThemeMode> notifierList = [];

    listOfItems(
      themes,
      icons,
      'icon',
    );

    listOfItems(
      themes,
      themeNames,
      'name',
    );

    listOfItems(
      themes,
      selectedList,
      'selected',
    );

    listOfItems(
      themes,
      notifierList,
      'theme',
    );

    return Card(
      child: SizedBox(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Theme Settings',
                  style: TextStyles.cardHeader,
                ),
              ),
              ComponentStyles.standardDivider,
              IconToggleButton(
                icons: icons,
                selectedDisplayName: themeNames,
                selectedList: selectedList,
                notifierList: const [
                  ThemeMode.system,
                  ThemeMode.dark,
                  ThemeMode.light
                ],
                defaultSetting: 'System Theme',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
