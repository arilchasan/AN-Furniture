import 'package:colours/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Cart/cartdb.dart';
import 'package:project_pas/Cart/cartmodel.dart';
import 'package:project_pas/Cart/chekout.dart';

class viewCart extends StatefulWidget {
  const viewCart({super.key});

  @override
  State<viewCart> createState() => _viewCartState();
}

class _viewCartState extends State<viewCart> {
  List<FurnitureCart> dataListCart = [];

  bool checkExist = false;
  bool isLoading = false;

  double total = 12.000;

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            toolbarHeight: 55,
            backgroundColor: Color.fromRGBO(154, 154, 154, 10),
            // leading: Image.asset(
            //   'assets/app.png',
            //   fit: BoxFit.cover,
            // ),
            title: Center(
              child: Text(
                "Cart",
              ),
            )),
        body: Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.only(left: 25, right: 25, top: 20),
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
                                crossAxisAlignment:
                                    CrossAxisAlignment.start,
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
                                  Spacer(),
                                ],
                              ),
                              IconButton(
                                onPressed: () {
                                  showDeleteDialog(context, index);
                                },
                                icon: Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                              ),
                            ]));
                      },
                    ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => checkout()));
          },
          label: const Text(
            'Chekout',
            style: TextStyle(color: Colours.black),
          ),
          backgroundColor: Colours.silver,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
