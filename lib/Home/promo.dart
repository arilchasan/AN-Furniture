import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class promotion extends StatefulWidget {
  const promotion({Key? key}) : super(key: key);

  @override
  State<promotion> createState() => _promotionState();
}

class _promotionState extends State<promotion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      margin: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Color.fromRGBO(154, 154, 154, 0.733),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("25%",
                      style: GoogleFonts.montserrat(
                          fontSize: 40, fontWeight: FontWeight.w600)),
                  Text("Spesial Diskon!",
                      style: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.w600)),
                  Text("Dapatkan diskon hanya untuk pembelian hari ini!",
                      style: GoogleFonts.montserrat(
                          fontSize: 12, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Image(
              image: AssetImage(
                "assets/light.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
