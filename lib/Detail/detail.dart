import 'package:colours/colours.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Home/home.dart';
import 'package:project_pas/Home/produk.dart';
import 'package:project_pas/Models/models.dart';
import 'package:project_pas/navbar.dart';

class Detailpage extends StatefulWidget {
  final FurnitureModel furniture;
  const Detailpage({Key? key, required this.furniture}) : super(key: key);

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Detail'),
      //   backgroundColor: Color.fromARGB(246, 255, 255, 255),
      //   leading: Icon(Icons.chevron_left),
      // ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(4, 30, 0, 7),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => navbar()));
                      },
                      icon: Icon(
                        Icons.chevron_left,
                        size: 35,
                      )),
                  Container(
                    margin: EdgeInsets.only(left: 120),
                    child: Text(
                      'Detail',
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 500,
              height: 350,
              child: Image.asset(widget.furniture.assets),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
              color: Color.fromARGB(158, 154, 154, 154),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Container(
                height: 368,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                padding: EdgeInsets.fromLTRB(10, 30, 20, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(widget.furniture.name,
                          style: GoogleFonts.montserrat(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(246, 0, 0, 0),
                          )),
                    ),
                    Text(''),
                    Text(widget.furniture.desc,
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(246, 0, 0, 0),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: 88),
                      child: Row(
                        children: [
                          Text(
                            "Rp." + widget.furniture.harga,
                            textAlign: TextAlign.left,
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Color.fromARGB(246, 0, 0, 0),
                            ),
                          ),
                          Spacer(),
                          ElevatedButton(
                            onPressed: () {
                              print('Berhasil');
                            },
                            child: Text(
                              ' Keranjang',
                              style: GoogleFonts.montserrat(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(246, 0, 0, 0),
                              ),
                            ),
                            style: ButtonStyle(
                                fixedSize: MaterialStateProperty.all(
                                  const Size(150, 50),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all(Colours.silver)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
