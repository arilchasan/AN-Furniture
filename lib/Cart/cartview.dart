import 'package:colours/colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Cart/chekout.dart';
import 'package:project_pas/Models/models.dart';
import 'package:project_pas/Models/models.dart';
import 'package:project_pas/Models/models.dart';
import 'package:provider/provider.dart';

import '../Models/models.dart';
import '../Models/models.dart';

class cartview extends StatefulWidget {
  const cartview({
    Key? key,
  }) : super(key: key);

  @override
  State<cartview> createState() => _cartviewState();
}

class _cartviewState extends State<cartview> {
  @override
  Widget build(BuildContext context) {
    //   CartNotifier cartNotifier({required bool renderUI}) =>
    //       Provider.of<CartNotifier>(context, listen: renderUI);

    // List<FurnitureModel> _products = cartNotifier(renderUI: true).selectedProducts;

    return Scaffold(
      body: ListView.builder(
          itemCount: sofa.length,
          itemBuilder: (context, index) {
            final lemari = anFurniture[index];
            return InkWell(
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: Container(
                      margin: EdgeInsets.all(30),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 60,
                              height: 60,
                              child: Image.asset(lemari.assets)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                lemari.name + " x 1",
                                style: GoogleFonts.montserrat(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                "Rp." + lemari.harga,
                                style: GoogleFonts.montserrat(
                                    fontSize: 13, fontWeight: FontWeight.w500),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 212),
                                child: Icon(
                                  Icons.delete,
                                  size: 20,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
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
    );
  }
}
