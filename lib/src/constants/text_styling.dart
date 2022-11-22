import 'package:flutter/material.dart';

class TextStyles {
  //Used in Placeholder for home page content as the header
  static const homePageHeader = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 50,
  );

  //Used in Page Template App Header
  static const appHeader = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 50,
  );

  //Used in Page Template App Subtitle
  static const appSubtitle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w100,
    fontSize: 20,
  );

  //Used for Blog post title and Theme Settings title
  static const cardHeader = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  //Used for Theme Settings Sub Title
  static const cardSubTitle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );

  //Used for Author, Posting Date, Contents text fields
  static const postNormalText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: Colors.black,
  );
}
