import 'package:flutter/material.dart';

import '../shared/colors.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Column(
        children: [
          Image.asset("assets/img/1.webp"),
          SizedBox(
            height: 11,
          ),
          Text(
            "\$ 12.99 ",
            style: TextStyle(fontSize: 20),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(4),
                child: Text("New"),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 255, 129, 129),
                    borderRadius: BorderRadius.circular(4)),
              )
            ],
          )
        ],
      ),
    );
  }
}
