import 'package:commec_app/pages/login.dart';
import 'package:flutter/material.dart';
import 'package:commec_app/shared/colors.dart';
import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/constant.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Center(
        child: Padding(
          padding: const EdgeInsets.all(33.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                TextField(
                    keyboardType: TextInputType.text,
                    obscureText: false,
                    decoration: widget_text_felid.copyWith(
                      hintText: "Enter your userName",
                    )),
                const SizedBox(height: 30),
                TextField(
                    keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: widget_text_felid.copyWith(
                      hintText: "Enter your email",
                    )),
                const SizedBox(height: 30),
                TextField(
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    decoration: widget_text_felid.copyWith(
                      hintText: "Enter your password",
                    )),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(BTNgreen),
                    padding:
                        MaterialStateProperty.all(const EdgeInsets.all(12)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                  ),
                  child: const Text(
                    "Register",
                    style: TextStyle(fontSize: 19),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Do not have an account ?",
                        style: TextStyle(fontSize: 20)),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                        child: const Text(
                          "ٍٍSign In",
                          style: TextStyle(color: Colors.black),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
