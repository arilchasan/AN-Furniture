import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project_pas/models.dart';

class Detailpage extends StatefulWidget {
  const Detailpage({Key? key}) : super(key: key);

  @override
  State<Detailpage> createState() => _DetailpageState();
}

class _DetailpageState extends State<Detailpage> {
  late final FurnitureModel furniture;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'),
        backgroundColor: Color.fromRGBO(190, 197, 214, 10),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            height: 360,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              image: DecorationImage(
                image: AssetImage(
                  furniture.assets,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
