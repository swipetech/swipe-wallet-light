import 'package:flutter/material.dart';

class SwpColors {
  static const Color blue = Color(0xff130DFF);
  static const Color green = Color(0xff2eff87);
  static const Color darkBlue = Color(0xff2d137c);
  static const Color grey = Color(0xff979797);
  static const Color lightGray = Color(0xffD1D1D1);
  static const Color lighterGray = Color(0xffECEBEB);
  static const Color black = Color(0xff2d137c);
  static const Color link = Color(0xff5E76FA);
  static const Color bg = Color(0xffD8D8D8);
  static const Color disableButton = Color(0xff130DFF);
}

final theme = ThemeData.light().copyWith(
  splashColor: Colors.transparent,
  primaryColor: SwpColors.blue,
  buttonColor: SwpColors.blue,
  accentColor: SwpColors.lightGray,
  dividerColor: SwpColors.lighterGray,
  disabledColor: SwpColors.grey,
  hintColor: SwpColors.grey,
  appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: SwpColors.grey),
      textTheme: TextTheme(
          title: TextStyle(
              color: SwpColors.darkBlue,
              fontSize: 22,
              fontWeight: FontWeight.bold))),
  primaryTextTheme: TextTheme(
    title: TextStyle(color: SwpColors.grey),
    display1: TextStyle(color: SwpColors.grey),
    body1: TextStyle(color: SwpColors.grey),
    body2: TextStyle(color: SwpColors.grey),
    caption: TextStyle(color: SwpColors.grey),
    headline: TextStyle(color: SwpColors.grey),
    subhead: TextStyle(color: SwpColors.grey),
    button: TextStyle(color: SwpColors.grey),
    display2: TextStyle(color: SwpColors.grey),
    display3: TextStyle(color: SwpColors.grey),
    display4: TextStyle(color: SwpColors.grey),
    overline: TextStyle(color: SwpColors.grey),
    subtitle: TextStyle(color: SwpColors.grey),
  ),
  textTheme: TextTheme(
    body1: TextStyle(color: SwpColors.grey, fontWeight: FontWeight.bold),
    overline: TextStyle(color: SwpColors.grey, fontWeight: FontWeight.bold),
    // title: TextStyle(color: SwpColors.gray),
    // display1: TextStyle(color: SwpColors.gray),
    // body2: TextStyle(color: SwpColors.gray),
    // caption: TextStyle(color: SwpColors.gray),
    // headline: TextStyle(color: SwpColors.gray),
    subhead: TextStyle(color: Colors.black),
    // button: TextStyle(color: SwpColors.gray),
    // display2: TextStyle(color: SwpColors.gray),
    // display3: TextStyle(color: SwpColors.gray),
    // display4: TextStyle(color: SwpColors.gray),
    // subtitle: TextStyle(color: SwpColors.gray),
  ),
);
