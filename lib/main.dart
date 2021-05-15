import 'package:flutter/material.dart';
import 'package:furniture_app_pre/constants.dart';
import 'package:furniture_app_pre/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        fontFamily: 'Circular Std',
      ),
      home: HomeScreen(),
    );
  }
}