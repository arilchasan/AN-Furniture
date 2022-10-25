import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Home/home.dart';

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
                  "assets/pp.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
                child: Column(children: [
              /// title
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 150, 40, 50),
                child: Text("Temukan furnitur minimalis untuk ruanganmu",
                    style: GoogleFonts.poppins(
                        fontSize: 50, fontWeight: FontWeight.w500)),
              ),

              /// button to navigate to home screen`
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => home()));
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(48),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 35,
                    vertical: 24,
                  ),
                ),
                child: Text(
                  "GET STARTED",
                  style:
                      GoogleFonts.montserrat(fontSize: 15, color: Colors.black),
                ),
              ),
            ]))));
  }
}
