import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/Detail/detailkursi.dart';
import 'package:project_pas/Detail/detaillemari.dart';
import 'package:project_pas/Detail/detailmeja.dart';
import 'package:project_pas/Detail/detailsofa.dart';
import 'package:project_pas/Home/carousel.dart';
import 'package:project_pas/Home/categories.dart';
import 'package:project_pas/Home/produk.dart';
import 'package:project_pas/Home/promo.dart';
import 'package:project_pas/Models/models.dart';
import 'package:project_pas/Detail/detail.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin {
  
  Icon cusIcon = Icon(Icons.search, size: 30, color: Colors.black);
  Widget textSearch = Text("");
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        backgroundColor: Color.fromRGBO(154, 154, 154, 10),
        leading: Image.asset(
          'assets/app.png',
          fit: BoxFit.cover,
        ),
        title: textSearch,
        actions: <Widget>[buildSearchBar(context)],
        // title: Column(
        //   children: [
        //     Row(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: [

        //         Image.asset(
        //           'assets/app.png',
        //           fit: BoxFit.contain,
        //           height: 130,
        //           width: 150,
        //         )
        //       ],
        //     ),
        //   ],
        // ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 5),
        child: Column(
          children: [
            const promotion(),
            Text(
              'Produk Populer & Baru',
              style: GoogleFonts.montserrat(fontWeight: FontWeight.w600,fontSize: 16),
            ),
            SizedBox(
              height: 210,
              child: populerproduk(),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Column(
                children: [
                  Container(
                    height: 45,
                    width: 375,
                    child: TabBar(
                        padding: EdgeInsets.only(right: 1, left: 4),
                        controller: _tabController,
                        isScrollable: true,
                        labelColor: Color.fromARGB(156, 0, 0, 0),
                        unselectedLabelColor: Color.fromARGB(160, 106, 92, 49),
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                              width: 2.0,
                              color: Color.fromRGBO(154, 154, 154, 10),
                            ),
                            insets: EdgeInsets.symmetric(horizontal: 36.0)),
                        tabs: [
                          Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Color.fromRGBO(154, 154, 154, 10),
                                )),
                            child: Text(
                              "Semua",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Color.fromRGBO(154, 154, 154, 10),
                                )),
                            child: Text(
                              "Sofa",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Color.fromRGBO(154, 154, 154, 10),
                                )),
                            child: Text(
                              "Lemari",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Color.fromRGBO(154, 154, 154, 10),
                                )),
                            child: Text(
                              "Kursi",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                  color: Color.fromRGBO(154, 154, 154, 10),
                                )),
                            child: Text(
                              "Meja",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ]),
                  ),
                ],
              ),
            ),
            Container(
              width: 375,
              height: 750,
              child: TabBarView(
                controller: _tabController,
                children: [
                  produk(),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 8,
                              childAspectRatio: 3 / 3),
                      padding: EdgeInsets.all(24),
                      itemCount: sofa.length,
                      itemBuilder: (context, index) {
                        final _sofa = sofa[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        detailsofa(furniture: _sofa)));
                          },
                          borderRadius: BorderRadius.circular(14),
                          child: Card(
                            color: Color.fromARGB(68, 154, 154, 154),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        _sofa.assets,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _sofa.name,
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "Rp " + _sofa.harga,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ]),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        );
                      }),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 8,
                              childAspectRatio: 3 / 3),
                      padding: EdgeInsets.all(24),
                      itemCount: lemari.length,
                      itemBuilder: (context, index) {
                        final _lemari = lemari[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => detaillemari(
                                          furniture: _lemari,
                                        )));
                          },
                          borderRadius: BorderRadius.circular(14),
                          child: Card(
                            color: Color.fromARGB(68, 154, 154, 154),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        _lemari.assets,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _lemari.name,
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "Rp " + _lemari.harga,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ]),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        );
                      }),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 8,
                              childAspectRatio: 3 / 3),
                      padding: EdgeInsets.all(24),
                      itemCount: kursi.length,
                      itemBuilder: (context, index) {
                        final _kursi = kursi[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => detailkursi(
                                          furniture: _kursi,
                                        )));
                          },
                          borderRadius: BorderRadius.circular(14),
                          child: Card(
                            color: Color.fromARGB(68, 154, 154, 154),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        _kursi.assets,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _kursi.name,
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "Rp " + _kursi.harga,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ]),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        );
                      }),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 8,
                              childAspectRatio: 3 / 3),
                      padding: EdgeInsets.all(24),
                      itemCount: meja.length,
                      itemBuilder: (context, index) {
                        final _meja = meja[index];
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => detailmeja(
                                          furniture: _meja,
                                        )));
                          },
                          borderRadius: BorderRadius.circular(14),
                          child: Card(
                            color: Color.fromARGB(68, 154, 154, 154),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(5),
                                  height: 100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        _meja.assets,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _meja.name,
                                            style: GoogleFonts.montserrat(
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            "Rp " + _meja.harga,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ]),
                                  ],
                                ))
                              ],
                            ),
                          ),
                        );
                      }),
                ],
              ),
            ),
            // const populer(),
          ],
        ),
      ),
      // produk(),
    );
  }
}

Padding buildSearchBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 0),
    child: Container(
      margin: EdgeInsets.only(left: 20, top: 5, bottom: 5),
      padding: EdgeInsets.all(5),
      height: MediaQuery.of(context).size.width,
      width: 340,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: Color.fromARGB(30, 255, 255, 255)),
      child: Center(
        child: TextFormField(
          enabled: true,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "Cari Furniture",
              hintStyle: GoogleFonts.montserrat(fontSize: 14),
              enabled: false,
              // suffixIcon: IconButton(
              //   icon: Icon(Icons.search_rounded),
              //   onPressed: () {},
              // ),
              prefixIcon: IconButton(
                icon: Icon(Icons.search_rounded),
                onPressed: () {},
              )),
        ),
      ),
    ),
  );
}
