import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:colours/colours.dart';
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
          child: Column(
            children: [
              /// title

              Container(
                child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 120, 110, 140),
                    child: AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TyperAnimatedText(
                          'Temukan furnitur minimalis untuk ruanganmu',
                          textStyle: GoogleFonts.montserrat(
                              fontSize: 40,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(255, 0, 0, 0)),
                          speed: const Duration(milliseconds: 100),
                        ),
                      ],
                    )),
              ),

              /// button to navigate to home screen`

              // Positioned(
              //   top: 250,
              //   bottom: 20,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       Navigator.pushReplacement(context,
              //           MaterialPageRoute(builder: (context) => navbar()));
              //     },
              //     style: ElevatedButton.styleFrom(
              //       primary: Color.fromARGB(132, 255, 255, 255),
              //       shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(48),
              //       ),
              //       padding: const EdgeInsets.symmetric(
              //         horizontal: 35,
              //         vertical: 15,
              //       ),
              //     ),
              //     child: Text(
              //       "MULAI",
              //       style: GoogleFonts.montserrat(
              //           fontSize: 15,
              //           color: Colors.black,
              //           fontWeight: FontWeight.w400),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 200),
        child: FloatingActionButton.extended(
          extendedPadding: EdgeInsets.symmetric(horizontal: 35, vertical: 15),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => navbar()));
          },
          label: const Text(
            'Mulai',
            style: TextStyle(
                color: Colours.black,
                fontSize: 16,
                fontWeight: FontWeight.w600),
          ),
          backgroundColor: Color.fromARGB(132, 255, 255, 255),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
