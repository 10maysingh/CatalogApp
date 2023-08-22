import 'package:flutter/material.dart';
import 'package:new_app/cart_page.dart';
import 'package:new_app/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';
import 'core/store.dart';
import 'home_page.dart';
import 'login_page.dart';
import 'utils/routes.dart';
import 'widgets/theme.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(VxState(store: MyStore(), child:myApp()));
}

class myApp extends StatelessWidget {
  const myApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
    textTheme: GoogleFonts.workSansTextTheme(
    Theme.of(context).textTheme,
    ),
      ),

      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,


      routes:{
        "/": (context)=>LoginPage(),
        Routes.homeRoute:(context)=>HomePage(),
        Routes.loginRoute:(context)=>LoginPage(),
        Routes.cartRoute:(context)=>CartPage(),
      },
    );
  }
}
