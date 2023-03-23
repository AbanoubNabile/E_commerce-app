import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Enter Your Password : ",
                  enabledBorder: OutlineInputBorder(
                      borderSide: Divider.createBorderSide(context)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey)),
                  filled: true,
                  contentPadding:
                  ))
        ],
      ),
    ));
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
