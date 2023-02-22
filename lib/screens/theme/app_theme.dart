import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.indigo;
  static const Color scaffoldBackgroundColor = Colors.black;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0.0),
      // textButton
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
        foregroundColor: primaryColor,
        //backgroundColor: Colors.white,
        //side: const BorderSide(
        // color: Colors.black,
        //),
        //shape: const StadiumBorder(),
        //foregroundColor: Colors.white,
        //textStyle: TextStyle(color: Colors.white),
      )),
      // floatingActionButton
      floatingActionButtonTheme:
          const FloatingActionButtonThemeData(backgroundColor: primaryColor),

      // elevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primaryColor,
              shape: const StadiumBorder(),
              elevation: 0)),
      // inputDecoration

      inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primaryColor)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: scaffoldBackgroundColor,
      appBarTheme: const AppBarTheme(color: primaryColor, elevation: 0.0));
}
