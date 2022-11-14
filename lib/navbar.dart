import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_pas/Cart/cartview.dart';
import 'package:project_pas/Home/categories.dart';
import 'package:project_pas/Home/home.dart';
import 'package:project_pas/Models/models.dart';

import 'package:project_pas/Setting/setting.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _homeState();
}

class _homeState extends State<navbar> {
  List<Widget> _widgetOptions = <Widget>[
    home(),
    cartview(),
    Setting(),
  ];

  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(_selectedTab.index),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 5),
        child: DotNavigationBar(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
          margin: EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          backgroundColor: Color.fromARGB(175, 154, 154, 154),
          dotIndicatorColor: Color.fromARGB(246, 255, 255, 255),
          unselectedItemColor: Color.fromARGB(168, 120, 107, 69),
          onTap: _handleIndexChanged,
          items: [
            DotNavigationBarItem(
              icon: Icon(Icons.home),
              selectedColor: Color.fromRGBO(0, 0, 0, 1),
            ),
            DotNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              selectedColor: Color.fromARGB(255, 0, 0, 0),
            ),
            DotNavigationBarItem(
              icon: Icon(Icons.settings),
              selectedColor: Color.fromARGB(255, 0, 0, 0),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home(), cart, settings }
