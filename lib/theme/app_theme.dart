import 'package:flutter/material.dart';

class AppTheme {
  static Color primary = Colors.blue.shade300;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //colo primario
    primaryColor: primary,

    //AppBar Theme
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0.0,
    ),

    // TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),

    //FloatingActionButton
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 0.0,
    ),

    //ElevatedButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //colo primario
    primaryColor: primary,

    //AppBar Theme
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0.0,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
