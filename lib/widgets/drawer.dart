import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final imageurl =
        "https://static1.colliderimages.com/wordpress/wp-content/uploads/2021/07/robert-downey-jr-the-avengers.jpeg";
    return Drawer(
      child: Container(
        color: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: const BoxDecoration(color: Colors.white),
                accountName: const Text(
                  "MD",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: const Text(
                  "flutter@gmail.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageurl),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.black),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.1,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
