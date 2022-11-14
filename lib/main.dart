import 'package:flutter/material.dart';
import 'package:project_pas/Home/carousel.dart';
import 'package:project_pas/Home/categories.dart';
import 'package:project_pas/Home/home.dart';
import 'package:project_pas/Setting/setting.dart';
import 'package:project_pas/Detail/detail.dart';
import 'package:project_pas/intro.dart';
import 'package:project_pas/login_screen/login_screen.dart';
import 'package:project_pas/navbar.dart';
import 'package:project_pas/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: splash());
  }
}
