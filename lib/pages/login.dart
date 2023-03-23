import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var custom_textfiled;
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          const SizedBox(
            height: 200,
          ),
          custom_textfiled(
              TextInputTypee: TextInputType.emailAddress,
              IsPassword: false,
              hinttextt: "Enter your email"),
          const SizedBox(height: 30),
          custom_textfiled(
              TextInputTypee: TextInputType.emailAddress,
              IsPassword: true,
              hinttextt: "Enter your password")
        ],
      ),
    ));
  }
}
