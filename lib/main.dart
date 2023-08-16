import 'package:flutter/material.dart';
import 'package:new_app/widgets/theme.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'utils/routes.dart';
import 'widgets/theme.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,

      routes:{
        "/": (context)=>HomePage(),
        Routes.homeRoute:(context)=>HomePage(),
        Routes.loginRoute:(context)=>LoginPage(),
      },
    );
  }
}
