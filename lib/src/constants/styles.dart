import 'package:flutter/material.dart';

mixin StylesConstant {
  static const double paddingSide = 20;
  static const EdgeInsets appPadding = EdgeInsets.all(StylesConstant.paddingSide);

  static final ThemeData appTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(
        color: Colors.black87,
      ),
    ),
    fontFamily: 'Montserrat'
  );

  static const TextStyle sectionHead = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.bold
  );
}