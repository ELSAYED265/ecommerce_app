import 'package:flutter/material.dart';

import 'Color.dart';

ThemeData themeEnglish = ThemeData(
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      height: 1.5,
      color: AppColor.grey,
      fontWeight: FontWeight.bold,
      fontFamily: "PlayfairDisplay",
    ),
    bodyMedium: TextStyle(
      fontSize: 25,
      color: Colors.black.withAlpha(460),
      fontWeight: FontWeight.bold,
      fontFamily: "PlayfairDisplay",
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      fontFamily: "PlayfairDisplay",
    ),
  ),
);

ThemeData themeArbic = ThemeData(
  fontFamily: "Cairo",
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      height: 1.5,
      color: AppColor.grey,
      fontWeight: FontWeight.bold,
      //  fontFamily: "PlayfairDisplay",
    ),
    bodyMedium: TextStyle(
      fontSize: 25,
      color: Colors.black.withAlpha(460),
      fontWeight: FontWeight.bold,
      // fontFamily: "PlayfairDisplay",
    ),
    titleLarge: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      // fontFamily: "PlayfairDisplay",
    ),
  ),
);
