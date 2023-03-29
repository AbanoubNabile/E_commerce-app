import 'package:commec_app/shared/colors.dart';
import 'dart:ui' show lerpDouble;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UserAccountsDrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets\img\686034.jpg"),
                          fit: BoxFit.cover)),
                  currentAccountPicture: CircleAvatar(
                      radius: 55,
                      backgroundImage:
                          AssetImage("assets\img\IMG_20230302_134818.jpg")),
                  accountEmail: Text("Abanoub Nabil @gmail.com"),
                  accountName: Text("Abanoub Nabil"),
                ),
                ListTile(
                    title: Text("Home"),
                    leading: Icon(Icons.home),
                    onTap: () {}),
                ListTile(
                    title: Text("My products"),
                    leading: Icon(Icons.add_shopping_cart),
                    onTap: () {}),
                ListTile(
                    title: Text("About"),
                    leading: Icon(Icons.help_center),
                    onTap: () {}),
                ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.exit_to_app),
                    onTap: () {}),
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Text("Developed by Abanoub Nabil © 2023",
                      style: TextStyle(fontSize: 16)),
                )
              ]),
        ),
        appBar: AppBar(
          actions: [
            Row(
              children: [
                Stack(
                  children: [
                    Positioned(
                      bottom: 24,
                      child: Container(
                          child: Text("8",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 0, 0, 0))),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(211, 164, 255, 193),
                              shape: BoxShape.circle)),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Text("\$13", style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ],
          backgroundColor: appbarGreen,
          title: Text("Home"),
        ),
      ),
    );
  }
}
