import 'package:code_along/src/app/shared/icon_toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
      'Given a list of maps of the theme selection, descriptive name, whether its selected, and an icon it returns the expected values',
      (tester) async {
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
      'themes',
    );

    await tester.pumpWidget(
      IconToggleButton(
        icons: icons,
        selectedDisplayName: themeNames,
        selectedList: selectedList,
        notifierList: notifierList,
        defaultSetting: 'System Theme',
      ),
    );

    expect(find.byIcon(Icons.computer), findsOneWidget);
  });
}
