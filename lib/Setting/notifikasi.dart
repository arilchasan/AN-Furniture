import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class notifikasi extends StatefulWidget {
  const notifikasi({Key? key}) : super(key: key);

  @override
  State<notifikasi> createState() => _notifikasiState();
}

class _notifikasiState extends State<notifikasi> {
  bool status1 = false;
  bool status2 = false;
  bool status3 = false;
  bool status4 = false;
  bool status5 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(154, 154, 154, 10),
        title: Text('Notifikasi',
            style: GoogleFonts.montserrat(
                fontSize: 19, fontWeight: FontWeight.w500)),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(15, 30, 15, 15),
        children: <Widget>[
          Card(
            color: Color.fromRGBO(154, 154, 154, 10),
            elevation: 4,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('Aktivitas' '\nChat Promosi dari penjual',
                      style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      FlutterSwitch(
                        width: 50,
                        height: 30,
                        activeColor: Colors.green,
                        inactiveColor: Color.fromARGB(255, 94, 89, 89),
                        value: status1,
                        onToggle: (val) {
                          setState(() {
                            status1 = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                ),
                ListTile(
                  title: Text('Feed',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlutterSwitch(
                        width: 50,
                        height: 30,
                        activeColor: Colors.green,
                        inactiveColor: Color.fromARGB(255, 94, 89, 89),
                        value: status2,
                        onToggle: (val) {
                          setState(() {
                            status2 = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                ),
                ListTile(
                  title: Text('Diskusi Produk',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlutterSwitch(
                        width: 50,
                        height: 30,
                        activeColor: Colors.green,
                        inactiveColor: Color.fromARGB(255, 94, 89, 89),
                        value: status3,
                        onToggle: (val) {
                          setState(() {
                            status3 = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                ),
                ListTile(
                  title: Text('Promo',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlutterSwitch(
                        width: 50,
                        height: 30,
                        activeColor: Colors.green,
                        inactiveColor: Color.fromARGB(255, 94, 89, 89),
                        value: status4,
                        onToggle: (val) {
                          setState(() {
                            status4 = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 1,
                  height: 1,
                ),
                ListTile(
                  title: Text('Toko Member',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      FlutterSwitch(
                        width: 50,
                        height: 30,
                        activeColor: Colors.green,
                        inactiveColor: Color.fromARGB(255, 94, 89, 89),
                        value: status5,
                        onToggle: (val) {
                          setState(() {
                            status5 = val;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
