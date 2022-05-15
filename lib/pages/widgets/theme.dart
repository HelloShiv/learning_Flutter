import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData LightThemeData(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          toolbarTextStyle: TextStyle(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)
          )
          );
  static ThemeData DarkTheme(BuildContext context) => ThemeData(
        
        brightness: Brightness.dark,
      );
}
