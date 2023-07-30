import 'package:flutter/material.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'utils/routes.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,

      routes:{
        "/": (context)=>LoginPage(),
        Routes.homeRoute:(context)=>HomePage(),
        Routes.loginRoute:(context)=>LoginPage(),
      },
    );
  }
}
