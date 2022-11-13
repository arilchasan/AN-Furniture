import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class populerproduk extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState();
  }
}

class _CarouselWithIndicatorState extends State<populerproduk> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<Widget> populer = [
    Container(
      height: 150,
      color: Color.fromRGBO(154, 154, 154, 10),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Sofa 2 Dudukan",
                      style: GoogleFonts.montserrat(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                  Text("Rp 2.099.000",
                      style: GoogleFonts.montserrat(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                  Text("Terjual 47 Produk",
                      style: GoogleFonts.montserrat(
                          fontSize: 13, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 5, bottom: 5),
              child: Image(
                width: 100,
                image: AssetImage(
                  "assets/sofa.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      height: 150,
      color: Color.fromRGBO(154, 154, 154, 10),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Meja Kerja",
                      style: GoogleFonts.montserrat(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                  Text("Rp 1.399.000",
                      style: GoogleFonts.montserrat(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                  Text("Terjual 39 Produk",
                      style: GoogleFonts.montserrat(
                          fontSize: 13, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 5, bottom: 5),
              child: Image(
                width: 100,
                image: AssetImage(
                  "assets/mejakerja.png",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    ),
    Container(
      height: 150,
      color: Color.fromRGBO(154, 154, 154, 10),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Kursi ARCH",
                      style: GoogleFonts.montserrat(
                          fontSize: 16, fontWeight: FontWeight.w600)),
                  Text("Rp 1.399.000",
                      style: GoogleFonts.montserrat(
                          fontSize: 14, fontWeight: FontWeight.w500)),
                  Text("New Produk",
                      style: GoogleFonts.montserrat(
                          fontSize: 13, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 5),
              padding: EdgeInsets.fromLTRB(4, 2, 4, 2),
              child: Image(
                width: 100,
                image: AssetImage(
                  "assets/Group81.png",
                ),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        ClipRRect(
          
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            child: CarouselSlider(
              items: populer,
              carouselController: _controller,
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 3 / 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: populer.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => _controller.animateToPage(entry.key),
              child: Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4)),
              ),
            );
          }).toList(),
        ),
      ]),
    );
  }
}
