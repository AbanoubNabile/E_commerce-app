import 'package:commec_app/pages/login.dart';
import 'package:commec_app/shared/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: appbarGreen,
      title: Text("Home"),
    ));
  }
}
