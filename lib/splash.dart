import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/pp.png'), 
              fit: BoxFit.cover),
        ),
        // child: Container(
        //     alignment: Alignment.center,
        //     child: const Text(
        //       'Show text here',
        //       style: TextStyle(
        //           color: Colors.pink,
        //           fontWeight: FontWeight.bold,
        //           fontSize: 22.0),
        //     )),
      ),
    );
  }
}
