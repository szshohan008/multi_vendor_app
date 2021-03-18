import 'package:flutter/material.dart';
import 'package:multivendorapp/Pages/HomePage.dart';
import 'package:multivendorapp/Pages/SplashPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
