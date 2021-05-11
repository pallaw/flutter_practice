import 'package:flutter/material.dart';

class MyAppThemes {
  static ThemeData appThemeLight() {
    return ThemeData(
      // Define the default brightness and colors for the overall app.
      brightness: Brightness.light,
      //appBar theme
      appBarTheme: AppBarTheme(
        //ApBar's color
        color: Colors.white,

        //Theme for AppBar's icons
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      //Theme for app's icons
      iconTheme: IconThemeData(
        color: Colors.indigo.shade800,
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.white, foregroundColor: Colors.black),
    );
  }

  static ThemeData appThemeDark() {
    return ThemeData(
      // Define the default brightness and colors for the overall app.
      brightness: Brightness.dark,
      //appBar theme
      appBarTheme: AppBarTheme(
        //ApBar's color
        color: Colors.black,

        //Theme for AppBar's icons
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      //Theme for app's icons
      iconTheme: IconThemeData(
        color: Colors.orange,
      ),

      floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.black, foregroundColor: Colors.white),
    );
  }
}
