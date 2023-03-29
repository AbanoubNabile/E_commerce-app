import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../shared/appbar.dart';

class checkOut extends StatelessWidget {
  const checkOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkout screen"),
        actions: [product_and_price()],
      ),
      body: Text(""),
    );
  }
}
