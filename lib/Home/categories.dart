import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class categories extends StatefulWidget {
  const categories({Key? key, required List<Text> children}) : super(key: key);

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  List<String> items = [
    "Home",
    "Explore",
    "Search",
    "Feed",
    "Post",
  ];
  List<IconData> icons = [
    Icons.home,
    Icons.explore,
    Icons.search,
    Icons.feed,
    Icons.post_add,
  ];
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.deepPurple[100],
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            /// CUSTOM TABBAR
            SizedBox(
              width: 500,
              height: 60,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            margin: const EdgeInsets.all(5),
                            width: 70,
                            height: 45,
                            decoration: BoxDecoration(
                              color: current == index
                                  ? Colors.white70
                                  : Colors.white54,
                              borderRadius: current == index
                                  ? BorderRadius.circular(15)
                                  : BorderRadius.circular(10),
                              border: current == index
                                  ? Border.all(
                                      color: Colors.deepPurpleAccent, width: 2)
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                                style: GoogleFonts.laila(
                                    fontWeight: FontWeight.w500,
                                    color: current == index
                                        ? Colors.black
                                        : Colors.grey),
                              ),
                            ),
                          ),
                        ),
                        Visibility(
                            visible: current == index,
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                  color: Colors.deepPurpleAccent,
                                  shape: BoxShape.circle),
                            ))
                      ],
                    );
                  }),
            ),

            /// MAIN BODY
            // Container(
            //   margin: const EdgeInsets.only(top: 30),
            //   width: double.infinity,
            //   height: 550,
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Icon(
            //         icons[current],
            //         size: 200,
            //         color: Colors.deepPurple,
            //       ),
            //       const SizedBox(
            //         height: 10,
            //       ),
            //       Text(
            //         items[current],
            //         style: GoogleFonts.laila(
            //             fontWeight: FontWeight.w500,
            //             fontSize: 30,
            //             color: Colors.deepPurple),
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
