import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Setting/alamat.dart';
import 'package:project_pas/Setting/alert.dart';
import 'package:project_pas/Setting/keamanan.dart';
import 'package:project_pas/Setting/notifikasi.dart';
import 'package:project_pas/Setting/privasi.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool tappedYes = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(15, 60, 15, 15),
        children: <Widget>[
          Row(
            children: [
              CircleAvatar(
                radius: 50,
                child: SizedBox(
                    width: 90,
                    height: 180,
                    child: ClipOval(child: Image.asset('assets/logo.png'))),
                backgroundColor: Color.fromARGB(255, 153, 153, 153),
              ),
              Container(
                height: 10,
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Aril',
                      style: GoogleFonts.montserrat(
                          fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Center(
                    child: Text(
                      '08********',
                      style: GoogleFonts.montserrat(
                          fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: 20,
          ),
          Text('Pengaturan Aplikasi',
              style: GoogleFonts.montserrat(
                fontSize: 16,
              )),
          Card(
            color: Color.fromRGBO(154, 154, 154, 10),
            elevation: 4,
            child: Column(
              children: <Widget>[
                ListTile(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => alamat()));
                  },
                  leading: Icon(
                    Icons.add_business_rounded,
                    color: Colors.black87,
                    size: 35,
                  ),
                  title: Text('Daftar Alamat',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.chevron_right_outlined,
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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => notifikasi()));
                  },
                  leading: Icon(
                    Icons.notifications,
                    color: Colors.black87,
                    size: 35,
                  ),
                  title: Text('Notifikasi',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.chevron_right_outlined,
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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => privasi()));
                  },
                  leading: Icon(
                    Icons.admin_panel_settings_outlined,
                    color: Colors.black87,
                    size: 35,
                  ),
                  title: Text('Privasi Akun',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.chevron_right_outlined,
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
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => keamanan()));
                  },
                  leading: Icon(
                    Icons.security,
                    color: Colors.black87,
                    size: 32,
                  ),
                  title: Text('Keamanan Akun',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500)),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(
                        Icons.chevron_right_outlined,
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
                  onTap: () async {
                    final action = await AlertDialogs.yesCancelDialog(
                        context, 'Keluar', 'Ingin Keluar ?');
                    if (action == DialogsAction.yes) {
                      setState(() => tappedYes = true);
                    } else {
                      setState(() => tappedYes = false);
                    }
                  },
                  leading: Icon(
                    Icons.logout_outlined,
                    color: Colors.black87,
                    size: 32,
                  ),
                  title: Text('Keluar',
                      style: GoogleFonts.montserrat(
                          fontSize: 14,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
