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
            children: [
              Container(
                child: Text('Rumah (Utama)',
                    style: GoogleFonts.montserrat(
                        fontSize: 13, fontWeight: FontWeight.bold)),
              ),
              Text(
                'Aril',
                textDirection: TextDirection.ltr,
              ),
              Text('08*********'),
              Text('Besito Gang 7,Kec.Gebog,' '\nKabupaten Kudus,Jawa Tengah'),
            ],
          ),
        ),
      ]),
    );
  }
}
