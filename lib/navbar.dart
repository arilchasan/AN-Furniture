import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:project_pas/Home/home.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _homeState();
}

class _homeState extends State<navbar> {
  List<Widget> _widgetOptions = <Widget>[
    home(),
    Center(child: Text('Index 1: Cart')),
    Center(child: Text('Index 2: Settings')),
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
          margin: EdgeInsets.only(left: 10, right: 10),
          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          backgroundColor: Color.fromRGBO(194, 178, 128, 50),
          dotIndicatorColor: Color.fromARGB(246, 255, 255, 255),
          unselectedItemColor: Color.fromARGB(168, 120, 107, 69),
          onTap: _handleIndexChanged,
          items: [
            DotNavigationBarItem(
              icon: Icon(Icons.home),
              selectedColor: Color(0xff73544C),
            ),
            DotNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              selectedColor: Color(0xff73544C),
            ),
            DotNavigationBarItem(
              icon: Icon(Icons.settings),
              selectedColor: Color(0xff73544C),
            ),
          ],
        ),
      ),
    );
  }
}

enum _SelectedTab { home(), cart, settings }
