import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context)=> ThemeData(
  primarySwatch: Colors.purple,
  appBarTheme: AppBarTheme(
  color: Colors.white,
  elevation: 0.0,
  iconTheme: IconThemeData(color: Colors.black),

  )
  );

  static ThemeData darkTheme(BuildContext context)=> ThemeData(
    brightness: Brightness.dark,
  );


  static Color darkblue = Color(0xff4169e1);
  static Color grey= Color(0xffFFFCC9);
}