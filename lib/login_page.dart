import 'package:flutter/material.dart';
import 'utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage>{

  String name = "";
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Image.asset("assets/images/login_page.png",
          fit: BoxFit.cover,),
          SizedBox(
            height: 20,
          ),

          Text("Welcome $name",
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
              padding:
                const EdgeInsets.symmetric(horizontal: 16.0,vertical: 32.0),
              child: Column(
                children: [
                TextFormField(
                  decoration: InputDecoration(
                  hintText: "Enter Username",
                  labelText: "Username",
                ),
                  onChanged: (value){
                    name = value;
                    setState(() {

                    });
                  },
              ),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    
                    hintText: "Enter Password",
                    labelText: "Password",
                  )
              ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, Routes.homeRoute);
                  },
                      child: Text("Login"),
                      style: TextButton.styleFrom(),
                  )
            ]
          )
          )

        ],
      )
    );
  }
}
