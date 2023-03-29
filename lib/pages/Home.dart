import 'package:commec_app/provider/cart.dart';
import 'package:commec_app/shared/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/item.dart';
import 'details_screen.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 22),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3 / 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 33),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(product: items[index]),
                      ),
                    );
                  },
                  child: GridTile(
                      child: Stack(
                        children: [
                          Positioned(
                            right: 0,
                            left: 0,
                            top: -3,
                            bottom: -9,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(55),
                                child: Image.asset(items[index].imgPath)),
                          ),
                        ],
                      ),
                      footer: GridTileBar(
                        backgroundColor: Color.fromARGB(66, 73, 127, 110),
                        trailing: IconButton(
                            color: Color.fromARGB(255, 62, 94, 70),
                            onPressed: () {},
                            icon: Icon(Icons.add)),
                        leading: Text("\$12.99"),
                        title: Text(
                          "",
                        ),
                      )),
                );
              }),
        ),
        drawer: Drawer(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
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
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 12),
                  child: Text("Developed by Abanoub Nabil © 2023",
                      style: TextStyle(fontSize: 16)),
                )
              ]),
        ),
        appBar: AppBar(
          actions: [],
          backgroundColor: appbarGreen,
          title: Consumer<Cart>(builder: ((context, testt, child) {
            return Text("${testt}");
          })),
        ),
      ),
    );
  }
}
