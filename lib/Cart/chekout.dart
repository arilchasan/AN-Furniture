import 'package:colours/colours.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Models/models.dart';

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
        Card(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rincian Pembayaran'),
                Row(
                  children: [
                    Text('Subtotal untuk produk'),
                    Spacer(),
                    Text('Rp 2.499.000'),
                  ],
                ),
                Row(
                  children: [
                    Text('Subtotal pengiriman'),
                    Spacer(),
                    Text('Rp 12.000'),
                  ],
                ),
                Row(
                  children: [
                    Text('Total Pembayaran'),
                    Spacer(),
                    Text('Rp 2.511.000'),
                  ],
                ),
              ],
            ),
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
}


