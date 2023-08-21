import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

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
      primarySwatch: Colors.purple,
      cardColor: Colors.black,
      canvasColor: Colors.grey,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
  ));


  static Color darkblue = Color(0xff4169e1);
  static Color grey= Color(0xffFFFCC9);
  static Color darkgrey=Colors.grey;
  static Color lightblue=Colors.purpleAccent;
}