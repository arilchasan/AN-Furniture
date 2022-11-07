import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Detail/detail.dart';
import 'package:project_pas/Models/models.dart';

class produk extends StatefulWidget {
  produk({Key? key}) : super(key: key);

  @override
  State<produk> createState() => _produkState();
}

class _produkState extends State<produk> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      padding: MediaQuery.of(context).padding,
      child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 8,
              childAspectRatio: 3 / 3),
          padding: const EdgeInsets.all(24),
          itemCount: anFurniture.length,
          itemBuilder: (context, index) {
            final furniture = anFurniture[index];
            return InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detailpage(furniture: furniture,)));
                },
                borderRadius: BorderRadius.circular(14),
                child: Card(
                  
                  color: Color.fromARGB(68, 154, 154, 154),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// furniture foto
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 100,
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage(
                                furniture.assets,
                              ),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    furniture.name,
                                    style: GoogleFonts.montserrat(fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                  Text(
                                    "Rp " + furniture.harga,
                                    style: GoogleFonts.montserrat(fontSize: 14,fontWeight: FontWeight.w500),
                                  ),
                                ]),
                            // Spacer(),
                            // Container(
                            //   child: IconButton(
                            //     icon: Icon(
                            //       Icons.shopping_cart_outlined,
                            //       size: 20,
                            //     ),
                            //     onPressed: () {},
                            //   ),
                            // ),
                          ],
                        ))
                      ]),
                ));
          }),
    );
  }
}
