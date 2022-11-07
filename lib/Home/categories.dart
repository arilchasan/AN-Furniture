// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:project_pas/Home/produk.dart';
// import 'package:project_pas/Models/models.dart';
// import 'package:project_pas/detail.dart';

// class categories extends StatefulWidget {
//   const categories({Key? key}) : super(key: key);

//   @override
//   State<categories> createState() => _categoriesState();
// }

// class _categoriesState extends State<categories> with TickerProviderStateMixin {
//   @override
//   Widget build(BuildContext context) {
//     TabController _tabController = TabController(length: 5, vsync: this);
//     return Scaffold(
//       body: Column(
//         children: [
//           //nama categorie
//           Padding(
//               padding: EdgeInsets.all(2),
//               child: Column(
//                 children: [
//                   Container(
//                     height: 45,
//                     width: 370,
//                     // decoration: BoxDecoration(
//                     //     color: Color.fromARGB(255, 206, 206, 206),
//                     //     borderRadius: BorderRadius.circular(20)),
//                     child: TabBar(
//                         padding: EdgeInsets.only(right: 5),
//                         controller: _tabController,
//                         isScrollable: true,
//                         labelColor: Color.fromARGB(156, 0, 0, 0),
//                         unselectedLabelColor: Color.fromARGB(160, 106, 92, 49),
//                         indicator: UnderlineTabIndicator(
//                             borderSide: BorderSide(
//                               width: 2.0,
//                               color: Color.fromRGBO(154, 154, 154, 10),
//                             ),
//                             insets: EdgeInsets.symmetric(horizontal: 36.0)),
//                         tabs: [
//                           Container(
//                             margin: EdgeInsets.all(2),
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 6, vertical: 8),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(5),
//                                 border: Border.all(
//                                   color: Color.fromRGBO(154, 154, 154, 10),
//                                 )),
//                             child: Text(
//                               "Semua",
//                               style: GoogleFonts.montserrat(
//                                   fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(2),
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 10, vertical: 8),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(5),
//                                 border: Border.all(
//                                   color: Color.fromRGBO(154, 154, 154, 10),
//                                 )),
//                             child: Text(
//                               "Sofa",
//                               style: GoogleFonts.montserrat(
//                                   fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(2),
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 10, vertical: 8),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(5),
//                                 border: Border.all(
//                                   color: Color.fromRGBO(154, 154, 154, 10),
//                                 )),
//                             child: Text(
//                               "Lemari",
//                               style: GoogleFonts.montserrat(
//                                   fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(2),
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 10, vertical: 8),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(5),
//                                 border: Border.all(
//                                   color: Color.fromRGBO(154, 154, 154, 10),
//                                 )),
//                             child: Text(
//                               "Kursi",
//                               style: GoogleFonts.montserrat(
//                                   fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                           Container(
//                             margin: EdgeInsets.all(2),
//                             padding: EdgeInsets.symmetric(
//                                 horizontal: 10, vertical: 8),
//                             decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(5),
//                                 border: Border.all(
//                                   color: Color.fromRGBO(154, 154, 154, 10),
//                                 )),
//                             child: Text(
//                               "Meja",
//                               style: GoogleFonts.montserrat(
//                                   fontWeight: FontWeight.w600),
//                             ),
//                           ),
//                         ]),
//                   ),
//                 ],
//               )),

//           //atur tab
//           Container(
//             width: 500,
//             height: 627,
//             child: TabBarView(controller: _tabController, 
//             children: [
//               SingleChildScrollView(
//                 scrollDirection: Axis.vertical,
//                 child: produk(),
//               ),
//               GridView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 8,
//                       childAspectRatio: 3 / 3),
//                   padding: EdgeInsets.all(24),
//                   itemCount: sofa.length,
//                   itemBuilder: (context, index) {
//                     final _sofa = sofa[index];
//                     return InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => Detailpage()));
//                       },
//                       borderRadius: BorderRadius.circular(14),
//                       child: Card(
//                         color: Color.fromARGB(68, 154, 154, 154),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Column(
//                           children: [
//                             Container(
//                               margin: EdgeInsets.all(8),
//                               height: 100,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 image: DecorationImage(
//                                   image: AssetImage(
//                                     _sofa.assets,
//                                   ),
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                                 child: Row(
//                               children: [
//                                 Container(
//                                   padding: EdgeInsets.all(5),
//                                 ),
//                                 Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         _sofa.name,
//                                         style: GoogleFonts.montserrat(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 14),
//                                       ),
//                                       Text(
//                                         "Rp " + _sofa.harga,
//                                         style: GoogleFonts.montserrat(
//                                             fontSize: 14),
//                                       ),
//                                     ]),
//                               ],
//                             ))
//                           ],
//                         ),
//                       ),
//                     );
//                   }),
//               GridView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 8,
//                       childAspectRatio: 3 / 3),
//                   padding: EdgeInsets.all(24),
//                   itemCount: lemari.length,
//                   itemBuilder: (context, index) {
//                     final _lemari = lemari[index];
//                     return InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => Detailpage()));
//                       },
//                       borderRadius: BorderRadius.circular(14),
//                       child: Card(
//                         color: Color.fromARGB(68, 154, 154, 154),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Column(
//                           children: [
//                             Container(
//                               margin: EdgeInsets.all(8),
//                               height: 100,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 image: DecorationImage(
//                                   image: AssetImage(
//                                     _lemari.assets,
//                                   ),
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                                 child: Row(
//                               children: [
//                                 Container(
//                                   padding: EdgeInsets.all(5),
//                                 ),
//                                 Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         _lemari.name,
//                                         style: GoogleFonts.montserrat(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 14),
//                                       ),
//                                       Text(
//                                         "Rp " + _lemari.harga,
//                                         style: GoogleFonts.montserrat(
//                                             fontSize: 14),
//                                       ),
//                                     ]),
//                               ],
//                             ))
//                           ],
//                         ),
//                       ),
//                     );
//                   }),
//               GridView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 8,
//                       childAspectRatio: 3 / 3),
//                   padding: EdgeInsets.all(24),
//                   itemCount: kursi.length,
//                   itemBuilder: (context, index) {
//                     final _kursi = kursi[index];
//                     return InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => Detailpage()));
//                       },
//                       borderRadius: BorderRadius.circular(14),
//                       child: Card(
//                         color: Color.fromARGB(68, 154, 154, 154),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Column(
//                           children: [
//                             Container(
//                               margin: EdgeInsets.all(8),
//                               height: 100,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 image: DecorationImage(
//                                   image: AssetImage(
//                                     _kursi.assets,
//                                   ),
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                                 child: Row(
//                               children: [
//                                 Container(
//                                   padding: EdgeInsets.all(5),
//                                 ),
//                                 Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         _kursi.name,
//                                         style: GoogleFonts.montserrat(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 14),
//                                       ),
//                                       Text(
//                                         "Rp " + _kursi.harga,
//                                         style: GoogleFonts.montserrat(
//                                             fontSize: 14),
//                                       ),
//                                     ]),
//                               ],
//                             ))
//                           ],
//                         ),
//                       ),
//                     );
//                   }),
//               GridView.builder(
//                   shrinkWrap: true,
//                   physics: const NeverScrollableScrollPhysics(),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 2,
//                       mainAxisSpacing: 10,
//                       crossAxisSpacing: 8,
//                       childAspectRatio: 3 / 3),
//                   padding: EdgeInsets.all(24),
//                   itemCount: meja.length,
//                   itemBuilder: (context, index) {
//                     final _meja = meja[index];
//                     return InkWell(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => Detailpage()));
//                       },
//                       borderRadius: BorderRadius.circular(14),
//                       child: Card(
//                         color: Color.fromARGB(68, 154, 154, 154),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         child: Column(
//                           children: [
//                             Container(
//                               margin: EdgeInsets.all(8),
//                               height: 100,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 image: DecorationImage(
//                                   image: AssetImage(
//                                     _meja.assets,
//                                   ),
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                             ),
//                             Expanded(
//                                 child: Row(
//                               children: [
//                                 Container(
//                                   padding: EdgeInsets.all(5),
//                                 ),
//                                 Column(
//                                     mainAxisAlignment: MainAxisAlignment.start,
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         _meja.name,
//                                         style: GoogleFonts.montserrat(
//                                             fontWeight: FontWeight.w600,
//                                             fontSize: 14),
//                                       ),
//                                       Text(
//                                         "Rp " + _meja.harga,
//                                         style: GoogleFonts.montserrat(
//                                             fontSize: 14),
//                                       ),
//                                     ]),
//                               ],
//                             ))
//                           ],
//                         ),
//                       ),
//                     );
//                   }),
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
// }
//   // Container(
//           //   child: Align(
//           //     alignment: Alignment.centerLeft,
//           //     child: TabBar(
//           //         padding: EdgeInsets.only(top: 50),
//           //         controller: _tabController,
//           //         isScrollable: true,
//           //         labelColor: Color.fromRGBO(154, 154, 154, 100),
//           //         unselectedLabelColor: Color.fromARGB(168, 120, 107, 69),
//           //         indicator: UnderlineTabIndicator(
//           //             borderSide: BorderSide(
//           //               width: 5.0,
//           //             ),
//           //             insets: EdgeInsets.symmetric(horizontal: 36.0)),
//           //         tabs: [
//           //           Tab(
//           //             text: "Semua",
//           //           ),
//           //           Tab(
//           //             text: "Sofa",
//           //           ),
//           //           Tab(
//           //             text: "Lemari",
//           //           ),
//           //           Tab(
//           //             text: "Kursi",
//           //           ),
//           //           Tab(
//           //             text: "Meja",
//           //           ),
//           //         ]),
//           //   ),
//           // ),