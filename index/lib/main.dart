import 'package:flutter/material.dart';
import 'package:index/front.dart';
import 'package:index/homePage.dart';
import 'package:index/userLogin2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.purple,
        ),
        home: Homepage());
  }
}