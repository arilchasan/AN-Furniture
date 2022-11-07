import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class keamanan extends StatefulWidget {
  const keamanan({Key? key}) : super(key: key);

  @override
  State<keamanan> createState() => _keamananState();
}

class _keamananState extends State<keamanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 154, 154, 10),
        title: Text('Akun Saya',
            style: GoogleFonts.montserrat(
                fontSize: 19, fontWeight: FontWeight.w500)),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Card(
          margin: EdgeInsets.all(15),
          color: Color.fromRGBO(154, 154, 154, 10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text('Ubah Kata Sandi',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.password_sharp,
                      size: 30,
                      color: Colors.black54,
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                height: 1,
              ),
              ListTile(
                title: Text('Sidik Jari',
                    style: GoogleFonts.montserrat(
                        fontSize: 14,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500)),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.fingerprint,
                      size: 30,
                      color: Colors.black54,
                    )
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
