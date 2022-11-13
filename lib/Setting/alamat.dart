import 'package:colours/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class alamat extends StatefulWidget {
  const alamat({Key? key}) : super(key: key);

  @override
  State<alamat> createState() => _alamatState();
}

class _alamatState extends State<alamat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 154, 154, 10),
        title: Text('Pilih Alamat',
            style: GoogleFonts.montserrat(
                fontSize: 19, fontWeight: FontWeight.w500)),
      ),
      body: ListView(padding: EdgeInsets.fromLTRB(15, 30, 15, 15), children: [
        Text('Alamat',
            style: GoogleFonts.montserrat(
              fontSize: 16,
            )),
        Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(8),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text('Rumah (Utama)',
                            style: GoogleFonts.montserrat(
                                fontSize: 13, fontWeight: FontWeight.bold)),
                        Text(
                          'Aril',
                          style: GoogleFonts.montserrat(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '08*********',
                          style: GoogleFonts.montserrat(
                              fontSize: 13, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Besito Gang 7,Kec.Gebog,'
                          '\nKabupaten Kudus,Jawa Tengah',
                          style: GoogleFonts.montserrat(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Container(
                        margin: EdgeInsets.only(left: 80),
                        child: Icon(
                          Icons.check,
                          size: 30,
                          color: Colours.green,
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
