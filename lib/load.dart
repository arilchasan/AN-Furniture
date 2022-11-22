import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/intro.dart';
import 'package:project_pas/login_screen/login_screen.dart';

import 'navbar.dart';

class load extends StatefulWidget {
  const load({Key? key}) : super(key: key);

  @override
  State<load> createState() => _LoadScreenState();
}

class _LoadScreenState extends State<load> {
  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => navbar()));
    });
  }

  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Center(
          child: Container(
            width: 1000,
            height: 700,
            child: Image.asset('assets/loading1.gif'),
          ),
        ),
      ),
    );
  }
}
