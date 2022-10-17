import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_pas/home.dart';

class navbar extends StatefulWidget {
  const navbar({Key? key}) : super(key: key);

  @override
  State<navbar> createState() => _homeState();
}

class _homeState extends State<navbar> {
  final List<Map<String, Widget>> pages = [
    {
      'page': home(),
    },
    {
      'page': home(),
    },
    {
      'page': home(),
    },
  ];

  int selectedIndex = 0;
  @override
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex]['page'],
      bottomNavigationBar: new Container(
        child: BottomNavigationBar(
          currentIndex: selectedIndex, //New
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: const Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}
