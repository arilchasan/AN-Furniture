import 'package:colours/colours.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Cart/cartdb.dart';
import 'package:project_pas/Cart/cartmodel.dart';
import 'package:project_pas/Cart/view.dart';
import 'package:project_pas/Models/models.dart';
import 'package:project_pas/Setting/alert.dart';
import 'package:project_pas/load.dart';
import 'package:project_pas/navbar.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class checkout extends StatefulWidget {
  const checkout({Key? key}) : super(key: key);

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  final List<String> items = [
    'DANA',
    'OVO',
    'COD',
    'Bank BRI',
  ];
  String? selectedValue;

  List<FurnitureCart> dataListCart = [];

  bool checkExist = false;
  bool isLoading = false;

  Future read() async {
    setState(() {
      isLoading = true;
    });
    dataListCart = await FurnitureDatabase.instance.readAll();
    print("Length List " + dataListCart.length.toString());
    setState(() {
      isLoading = false;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    read();
  }

  showDeleteDialog(BuildContext context, int index) {
    // set up the button
    Widget cancelButton = TextButton(
      child: Text("Tidak"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget okButton = TextButton(
        child: Text("Hapus"),
        onPressed: () async {
          setState(() {
            isLoading = true;
          });
          await FurnitureDatabase.instance.delete(dataListCart[index].nama!);
          read();
          setState(() {
            isLoading = false;
          });
          Navigator.of(context, rootNavigator: true).pop();
        });

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      content: Text("Apakah anda ingin menghapus dari Keranjang?"),
      actions: [cancelButton, okButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Checkout'),
        backgroundColor: Color.fromRGBO(154, 154, 154, 10),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(7),
          child: Card(
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
        ),
        Card(
          margin: EdgeInsets.all(15),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Text(
                  'Metode Pembayaran',
                  style: GoogleFonts.montserrat(
                      fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ),
              Spacer(),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          'Pilih',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: items
                      .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                      .toList(),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                  icon: const Icon(
                    Icons.arrow_forward_ios_outlined,
                  ),
                  iconSize: 14,
                  iconEnabledColor: Colors.grey,
                  iconDisabledColor: Colors.grey,
                  buttonHeight: 50,
                  buttonWidth: 100,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonElevation: 2,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 200,
                  dropdownPadding: null,
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 350,
          height: 100,
          child: isLoading
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : dataListCart.length == 0
                  ? Center(
                      child: Text(
                        "Tambahkan barang terlebih dahulu",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                    )
                  : ListView.builder(
                      itemCount: dataListCart.length,
                      itemBuilder: (c, index) {
                        final item = dataListCart[index];

                        return Container(
                            margin: EdgeInsets.only(bottom: 10),
                            padding: EdgeInsets.all(30),
                            width: 320,
                            height: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.04),
                                    offset: Offset(0.0, 4.0), //(x,y)
                                    blurRadius: 4.0,
                                  ),
                                ]),
                            child: Row(children: <Widget>[
                              Container(
                                  width: 45,
                                  height: 50,
                                  margin: EdgeInsets.only(right: 30),
                                  child: Image.asset(
                                      dataListCart[index].asssets!)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(
                                    height: 8,
                                  ),
                                  Text(
                                    dataListCart[index].nama!,
                                    style: GoogleFonts.montserrat(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(top: 2),
                                    width: 150,
                                    child: Text(
                                      "Rp " + dataListCart[index].harga!,
                                      style: GoogleFonts.montserrat(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ),
                                ],
                              ),
                            ]));
                      },
                    ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rincian Pembayaran',
                    style: GoogleFonts.montserrat(
                        fontSize: 14, fontWeight: FontWeight.w600)),
                Row(
                  children: [
                    Text('Subtotal untuk produk',
                        style: GoogleFonts.montserrat(
                            fontSize: 13, fontWeight: FontWeight.w400)),
                    Spacer(),
                    Text('Rp 2.499.000',
                        style: GoogleFonts.montserrat(
                            fontSize: 13, fontWeight: FontWeight.w400)),
                  ],
                ),
                Row(
                  children: [
                    Text('Subtotal pengiriman',
                        style: GoogleFonts.montserrat(
                            fontSize: 13, fontWeight: FontWeight.w400)),
                    Spacer(),
                    Text('Rp 12.000',
                        style: GoogleFonts.montserrat(
                            fontSize: 13, fontWeight: FontWeight.w400)),
                  ],
                ),
                Row(
                  children: [
                    Text('Total Pembayaran',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                    Spacer(),
                    Text('Rp 2.511.000',
                        style: GoogleFonts.montserrat(
                            fontSize: 14, fontWeight: FontWeight.w600)),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          width: 150,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              // Navigator.of(context).pop();
              sweatAlert(context);
            },
            child: Text('Pesan Sekarang'),
            style: ElevatedButton.styleFrom(primary: Colours.darkGrey),
          ),
        ),

        // Card(
        //   child: Row(
        //     children: [
        //       Column(children: [
        //         Text('Total Pembayaran'),
        //         Spacer(),
        //         Text('Rp 2.511.000'),
        //       ]),
        //       Container()
        //     ],
        //   ),
        // )
      ]),
    );
  }

  void sweatAlert(BuildContext context) {
    Alert(
      context: context,
      type: AlertType.success,
      title: "Pembayaran berhasil",
      desc: "Pembayaran sedang di Proses",
      buttons: [
        DialogButton(
          color: Colours.blueGrey,
          child: Text(
            "Selanjutnya",
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => load())),
        )
      ],
    ).show();
  }
}
