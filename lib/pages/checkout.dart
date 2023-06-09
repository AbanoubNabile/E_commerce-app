import 'package:commec_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';
import '../shared/appbar.dart';

class checkOut extends StatelessWidget {
  const checkOut({super.key});

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: Text("checkout screen"),
        actions: [product_and_price()],
      ),
      body: Column(children: [
         child: SizedBox(
          SingleChildScrollView(

          )
            height: 300,
            child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: Carttt.selectedProducts.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    subtitle: Text("TEST"),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage("PATH"),
                    ),
                    title: Text("Test"),
                    trailing: IconButton(
                      onPressed: () {
                        Carttt.delete(Carttt.selectedProducts[index]);
                      },
                      icon: Icon(Icons.remove),
                    ),
                  ),
                );
              },
            )),

      ],)
      );
  }
}
/**** */