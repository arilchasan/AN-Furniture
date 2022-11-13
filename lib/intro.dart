import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Home/home.dart';
import 'package:project_pas/navbar.dart';

class intro extends StatefulWidget {
  const intro({Key? key}) : super(key: key);

  @override
  State<intro> createState() => _introState();
}

class _introState extends State<intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/wp.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
                child: Column(children: [
              /// title
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 120, 110, 140),
                child: Text("Temukan furnitur minimalis untuk ruanganmu",
                    style: GoogleFonts.montserrat(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 0, 0, 0))),
              ),

              /// button to navigate to home screen`

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => navbar()));
                },
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(132, 255, 255, 255),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 15,
                  ),
                ),
                child: Text(
                  "MULAI",
                  style: GoogleFonts.montserrat(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ]))));
  }
}
