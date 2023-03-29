import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/cart.dart';

class product_and_price extends StatelessWidget {
  const product_and_price({super.key});

  @override
  Widget build(BuildContext context) {
    final Carttt = Provider.of<Cart>(context);
    return Row(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 24,
              child: Container(
                  child: Text("${Carttt.selectedProducts.length}",
                      style: TextStyle(
                          fontSize: 18, color: Color.fromARGB(255, 0, 0, 0))),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(211, 164, 255, 193),
                      shape: BoxShape.circle)),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_shopping_cart)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Text("\$13", style: TextStyle(fontSize: 18)),
        ),
      ],
    );
  }
}
