import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Home/categories.dart';
import 'package:project_pas/Home/produk.dart';
import 'package:project_pas/Home/promo.dart';
import 'package:project_pas/models.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Color.fromRGBO(154, 154, 154, 10),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.contain,
                  height: 140,
                  width: 200,
                )
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: MediaQuery.of(context).padding,
        child: Column(
          children: [
            promotion(),
            Container(
              padding: EdgeInsets.only(right: 150),
              margin: EdgeInsets.only(right: 100),
              child: Text(
                "Semua Produk",
                style: GoogleFonts.montserrat(
                    fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            produk(),
          ],
        ),
      ),
      // produk(),
    );
  }
}
