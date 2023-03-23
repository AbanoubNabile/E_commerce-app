// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class custom_textfiled extends StatelessWidget {
  final TextInputType TextInputTypee;
  final bool IsPassword;
  final String hinttextt;

custom_textfiled({
  required this.TextInputTypee,required this.IsPassword,required this.hinttextt
})


  
  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: TextInputTypee,
        obscureText: IsPassword,
        decoration: InputDecoration(
            hintText: hinttextt,
            enabledBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            filled: true,
            contentPadding: const EdgeInsets.all(8)));
  }
}
