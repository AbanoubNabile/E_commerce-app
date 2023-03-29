import 'package:commec_app/pages/Home.dart';
import 'package:commec_app/pages/details_screen.dart';
import 'package:commec_app/pages/login.dart';
import 'package:commec_app/pages/register_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) {
          return ClassName();
        },
        child: MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
  }
}
