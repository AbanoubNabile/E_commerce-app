// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:commec_app/pages/login.dart';
import 'package:commec_app/shared/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          drawer: Drawer(
            child: Column(children: [
              UserAccountsDrawerHeader(
                accountEmail: Text("Abanoub Nabil @gmail.com"),
                accountName: Text("Abanoub Nabil"),
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
                          onPressed: () {},
                          icon: Icon(Icons.add_shopping_cart)),
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
          )),
    );
  }
}
