// import 'package:flutter/cupertino.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:sqflite/sqlite_api.dart';

// class Cart {
//   final String? productName;
//   final int? initialPrice;
//   final int? productPrice;
//   final ValueNotifier<int>? quantity;
//   final String? image;

//   Cart(
//       {required this.productName,
//       required this.initialPrice,
//       required this.productPrice,
//       required this.quantity,
//       required this.image});

//   Cart.fromMap(Map<dynamic, dynamic> data)
//       : productName = data['productName'],
//         initialPrice = data['initialPrice'],
//         productPrice = data['productPrice'],
//         quantity = ValueNotifier(data['quantity']),
//         image = data['image'];

//   Map<String, dynamic> toMap() {
//     return {
//       'productName': productName,
//       'initialPrice': initialPrice,
//       'productPrice': productPrice,
//       'quantity': quantity?.value,
//       'image': image,
//     };
//   }
// }
