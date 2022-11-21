import 'dart:convert';

import 'package:flutter/widgets.dart';

class FurnitureModel {
  late final String name;
  final String assets;
  final String harga;
  final String desc;

  // static var furniture;

  FurnitureModel({
    required this.name,
    required this.assets,
    required this.harga,
    required this.desc,
  });

  // static FurnitureModel fromJson(Map<String, Object? json>) => FurnitureModel(
  //   name: json(FurnitureModel.name) as String,
  //   assets: json(FurnitureModel.assets) as String,
  //   harga: json(FurnitureModel.harga) as String,
  //   desc: json(FurnitureModel.desc) as String,
  // );

  // Map<String, Object?> toJson() => {
  //       FurnitureModel.name: name
  //     };
}

class CartNotifier extends ChangeNotifier {
  List<FurnitureModel> selectedProducts = [];

  List<String> selectedProductsIds = [];

  List<String> selectedProductsPrice = [];

  addToCart({required FurnitureModel product}) {
    if (selectedProductsIds.contains(product.name)) {
      selectedProducts.remove(product);
      selectedProductsIds.remove(product.name);
      selectedProductsPrice.remove(product.harga);
      notifyListeners();
    } else {
      selectedProducts.add(product);
      selectedProductsIds.add(product.name);
      selectedProductsPrice.add(product.harga);
      notifyListeners();
    }
    ;
  }
}

List<FurnitureModel> anFurniture = [
  FurnitureModel(
    name: "Lemari Buffet",
    assets: 'assets/lemaribuffet.png',
    desc:
        'Memiliki total 9 tempat penyimpanan terbuka dan tertutup, Lemari Bufet Onyx dibuat dari material particle board dan MDF yang sudah dikurasi sebaik mungkin untuk hasil furnitur tahan lama.',
    harga: "2.499.000",
  ),
  FurnitureModel(
    name: "Meja Kerja",
    assets: 'assets/mejakerja.png',
    desc:
        'Desain dari Meja Kerja Grits memang menarik dan tidak membosankan! Penampang luas, serta dilengkapi ekstra kompartemen membuat Meja Kerja Grits mampu menopang berbagai kebutuhanmu selama bekerja.',
    harga: "1.399.000",
  ),
  FurnitureModel(
    name: "Kursi Minimalis",
    assets: 'assets/kursi.png',
    desc:
        'Kursi MONDY yang menggabungkan kenyamanan dan estetika. Berkat desainnya yang khas dan kenyamanan yang ditawarkan, kursi ini mampu menjadi favorit banyak keluarga masa kini.',
    harga: "1.220.000",
  ),
  FurnitureModel(
    name: "Kursi Bar Besi",
    assets: 'assets/kursibar.png',
    desc:
        'Dudukan kursi dilapisi dengan kulit sintetis dan pada bagian kakinya terbuat dari besi anti karat yang kokoh. Jika kamu ingin membuat mini bar di rumah, Kursi Bar Alex bisa menjadi pilihan yang cocok untukmu.',
    harga: "1.499.000",
  ),
  FurnitureModel(
    name: "Sofa 2 Dudukan",
    assets: 'assets/sofa.png',
    desc:
        'Mengusung konsep modern dari desain sandaran tangan dan tufted button pada sandaran belakang sofa cocok untuk kamu yang mencari sofa bergaya scandinavian. Sofa ini dibuat dari rangka kayu solid pinewood.',
    harga: "2.099.000",
  ),
  FurnitureModel(
    name: "Meja Tv",
    assets: 'assets/mejatv.png',
    desc:
        'Meja TV ini memiliki 2 kompartemen terbuka dan 2 kompartemen tertutup. Kombinasi ini memudahkanmu dalam menata dan memilih barang mana yang mau kamu simpan dan mana yang mau dipajang.',
    harga: "1.199.000",
  ),
  FurnitureModel(
    name: "ARCH Kursi",
    assets: 'assets/arch.png',
    desc:
        'ARCH Kursi dilengkapi dengan sandaran bundar artistik, mengundang dan menawarkan tempat duduk yang nyaman. Kaki tabung ramping yang dihubungkan oleh bingkai yang terlihat menambah nuansa funky.',
    harga: "1.399.000",
  ),
  FurnitureModel(
    name: "Lemari Pakaian",
    assets: 'assets/lemaripakaian.png',
    desc:
        'Lemari pakaian ini mempunyai desain minimalis sangat pas untuk memperindah kamarmu.Berfungsi sebagai lemari penyimpanan beragam perlengkapan rumah kamu. ',
    harga: "999.000",
  ),
];

//sofo model
class SofaModel {
  final String name;
  final String assets;
  final String harga;
  final String desc;

  static var furniture;

  SofaModel({
    required this.name,
    required this.assets,
    required this.harga,
    required this.desc,
  });
}

List<SofaModel> sofa = [
  SofaModel(
      name: "Sofa 2 Dudukan",
      assets: 'assets/sofa.png',
      desc:
          'Mengusung konsep modern dari desain sandaran tangan dan tufted button pada sandaran belakang sofa cocok untuk kamu yang mencari sofa bergaya scandinavian. Sofa ini dibuat dari rangka kayu solid pinewood.',
      harga: "2.099.000"),
];

//lemari model
class LemariModel {
  final String name;
  final String assets;
  final String harga;
  final String desc;

  LemariModel({
    required this.name,
    required this.assets,
    required this.harga,
    required this.desc,
  });
}

List<LemariModel> lemari = [
  LemariModel(
      name: "Lemari Buffet",
      assets: 'assets/lemaribuffet.png',
      desc:
          'Memiliki total 9 tempat penyimpanan terbuka dan tertutup, Lemari Bufet Onyx dibuat dari material particle board dan MDF yang sudah dikurasi sebaik mungkin untuk hasil furnitur tahan lama.',
      harga: "2.499.000"),
  LemariModel(
      name: "Lemari Pakaian",
      assets: 'assets/lemaripakaian.png',
      desc:
          'Lemari pakaian ini mempunyai desain minimalis sangat pas untuk memperindah kamarmu.Berfungsi sebagai lemari penyimpanan beragam perlengkapan rumah kamu. ',
      harga: "999.000"),
];

//kursi model
class KursiModel {
  final String name;
  final String assets;
  final String harga;
  final String desc;

  static var furniture;

  KursiModel({
    required this.name,
    required this.assets,
    required this.harga,
    required this.desc,
  });
}

List<KursiModel> kursi = [
  KursiModel(
      name: "Kursi Minimalis",
      assets: 'assets/kursi.png',
      desc:
          'Kursi MONDY yang menggabungkan kenyamanan dan estetika. Berkat desainnya yang khas dan kenyamanan yang ditawarkan, kursi ini mampu menjadi favorit banyak keluarga masa kini.',
      harga: "1.220.000"),
  KursiModel(
      name: "Kursi Bar Besi",
      assets: 'assets/kursibar.png',
      desc:
          'Dudukan kursi dilapisi dengan kulit sintetis dan pada bagian kakinya terbuat dari besi anti karat yang kokoh. Jika kamu ingin membuat mini bar di rumah, Kursi Bar Alex bisa menjadi pilihan yang cocok untukmu.',
      harga: "1.499.000"),
  KursiModel(
      name: "ARCH Kursi",
      assets: 'assets/arch.png',
      desc:
          'ARCH Chair dilengkapi dengan sandaran bundar artistik, mengundang dan menawarkan tempat duduk yang nyaman. Kaki tabung ramping yang dihubungkan oleh bingkai yang terlihat menambah nuansa funky.',
      harga: "1.399.000"),
];

//lemari model
class MejaModel {
  final String name;
  final String assets;
  final String harga;
  final String desc;

  static var furniture;

  MejaModel({
    required this.name,
    required this.assets,
    required this.harga,
    required this.desc,
  });
}

List<MejaModel> meja = [
  MejaModel(
      name: "Meja Kerja",
      assets: 'assets/mejakerja.png',
      desc:
          'Desain dari Meja Kerja Grits memang menarik dan tidak membosankan! Penampang luas, serta dilengkapi ekstra kompartemen membuat Meja Kerja Grits mampu menopang berbagai kebutuhanmu selama bekerja.',
      harga: "1.399.000"),
  MejaModel(
      name: "Meja Tv",
      assets: 'assets/mejatv.png',
      desc:
          'Meja TV ini memiliki 2 kompartemen terbuka dan 2 kompartemen tertutup. Kombinasi ini memudahkanmu dalam menata dan memilih barang mana yang mau kamu simpan dan mana yang mau dipajang.',
      harga: "1.199.000"),
];
