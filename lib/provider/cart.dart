import 'package:commec_app/model/item.dart';
import 'package:flutter/material.dart';

class Cart with ChangeNotifier {
  List selectedProducts = [];
  int price = 0;
}
