import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_pas/categories.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(25, 50, 0, 0),
        child: Column(
          children: [
            Text(
              'Welcome....',
              style: GoogleFonts.montserrat(
                  fontSize: 25, fontWeight: FontWeight.w500),
            ),
            
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      elevation: 0,
      centerTitle: false,
      title: Text(''),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.shopping_cart_checkout,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
