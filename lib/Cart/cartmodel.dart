import 'package:project_pas/Models/models.dart';
import 'package:flutter/cupertino.dart';

class FurnitureClass {
  static final List<String> values = [
    nama,
    assets,
    harga,
  ];

  // table name
  static const favorite_ = 'cart';

  // column

  static final String nama = 'nama';
  static final String assets = 'assets';
  static final String harga = 'harga';
}

// column model
class FurnitureCart {
  final String? nama;
  final String? asssets;
  final String? harga;

  FurnitureCart({
    required this.nama,
    required this.asssets,
    required this.harga,
  });

  factory FurnitureCart.fromMap(Map<String, dynamic> json) {
    return FurnitureCart(
      nama: json['nama'] as String?,
      asssets: json['assets'] as String?,
      harga: json['harga'] as String?,
    );
  }

  Map<String, dynamic> toMap() => {
        FurnitureClass.nama: nama,
        FurnitureClass.assets: asssets,
        FurnitureClass.harga: harga,
      };
}
