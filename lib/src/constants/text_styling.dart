import 'package:code_along/src/constants/color_themes.dart';
import 'package:flutter/material.dart';

class TextStyles {
  //Used in Placeholder for home page content as the header
  static const homePageHeader = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 50,
  );

  //Used in Page Template App Header
  static const appHeader = TextStyle(
    color: ColorThemes.systemSecondaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 50,
  );

  //Used in Page Template App Subtitle
  static const appSubtitle = TextStyle(
    color: ColorThemes.systemSecondaryColor,
    fontWeight: FontWeight.w100,
    fontSize: 20,
  );

  //Used for Blog post title and Theme Settings title
  static const cardHeader = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  //Used for Theme Settings Sub Title
  static const cardSubTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );

  //Used for Author, Posting Date, Contents text fields
  static const postNormalText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
  );
}
