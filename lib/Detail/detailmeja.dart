import 'package:colours/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Home/home.dart';
import 'package:project_pas/Models/models.dart';
import 'package:project_pas/navbar.dart';
import 'package:quantity_input/quantity_input.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class detailmeja extends StatefulWidget {
  final MejaModel furniture;

  const detailmeja({Key? key, required this.furniture}) : super(key: key);

  @override
  State<detailmeja> createState() => _detailmejaState();
}

class _detailmejaState extends State<detailmeja> {
    int simpleIntInput = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Detail'),
      //   backgroundColor: Color.fromRGBO(154, 154, 154, 10),
      // ),
      body: SingleChildScrollView(
        child: Container(
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                        margin: EdgeInsets.only(top: 25),
                        child: QuantityInput(
                            inputWidth: 60,
                            iconColor: Colors.black,
                            buttonColor: Colours.darkGrey,
                            value: simpleIntInput,
                            onChanged: (value) => setState(() => simpleIntInput =
                                int.parse(value.replaceAll(',', '')))),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15),
                        child: Row(
                          children: [
                            Text(
                              "Rp." + widget.furniture.harga,
                              textAlign: TextAlign.left,
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(246, 54, 47, 47),
                              ),
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {
                                sweatAlert(context);
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
      ),
    );
  }
}

void sweatAlert(BuildContext context) {
  Alert(
    context: context,
    type: AlertType.success,
    title: "Berhasil ditambahkan ke Keranjang",
    buttons: [
      DialogButton(
        color: Colours.blueGrey,
        child: Text(
          "Tutup",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        onPressed: () => Navigator.pop(context, true),
      ),
    ],
  ).show();
}
