import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl="https://64.media.tumblr.com/3021de814a615d76f8d3ebd7308fc400/a0a84bbf4db2ec48-1f/s540x810/84d87360acbe4928cd8a20bb5a24bb6532d1bf39.jpg";
    return Drawer(
      child: Container (
        color: Colors.white,
        child: ListView(

          children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("happyworld"),
                accountEmail: Text("happy@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              )),
            ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.black,
            ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
            )
            ),
            ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
            ),
            ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.black,
                ),
                title: Text(
                  "Contact Me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )
            )
        ]
      )
    )
    );
  }
}
