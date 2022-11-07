import 'package:colours/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Models/models.dart';

class detailmeja extends StatefulWidget {
  final MejaModel furniture;

  const detailmeja({Key? key, required this.furniture}) : super(key: key);

  @override
  State<detailmeja> createState() => _detailmejaState();
}

class _detailmejaState extends State<detailmeja> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
        backgroundColor: Color.fromRGBO(154, 154, 154, 10),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              width: 500,
              height: 350,
              child: Image.asset(widget.furniture.assets),
            ),
            Card(
              margin: EdgeInsets.fromLTRB(1, 0, 1, 0),
              color: Color.fromRGBO(154, 154, 154, 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Container(
                height: 368,
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                padding: EdgeInsets.fromLTRB(10, 30, 20, 10),
                child: Column(
                  children: [
                    Text(widget.furniture.name,
                        style: GoogleFonts.montserrat(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(246, 0, 0, 0),
                        )),
                    Text(''),
                    Text(widget.furniture.desc,
                        style: GoogleFonts.montserrat(
                          fontSize: 17,
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
                            onPressed: (() {}),
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
