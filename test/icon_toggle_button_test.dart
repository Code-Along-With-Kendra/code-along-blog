import 'package:code_along/src/app/shared/icon_toggle_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
      'Given a list of maps of the theme selection, descriptive name, whether its selected, and an icon it returns the expected values',
      (tester) async {
    List<Widget> icons = <Widget>[
      const Icon(Icons.computer),
      const Icon(Icons.light_mode),
      const Icon(Icons.dark_mode),
    ];
    await tester.pumpWidget(IconToggleButton(icons: icons));

    expect(find.byIcon(Icons.computer), findsOneWidget);
  });
}
