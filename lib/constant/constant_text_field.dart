import 'package:flutter/material.dart';

class custom_textfiled extends StatelessWidget {
  const custom_textfiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: false,
        decoration: InputDecoration(
            hintText: "Enter your Email ",
            enabledBorder: OutlineInputBorder(
                borderSide: Divider.createBorderSide(context)),
            focusedBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
            filled: true,
            contentPadding: const EdgeInsets.all(8)));
  }
}
