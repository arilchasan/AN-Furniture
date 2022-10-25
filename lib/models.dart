class FurnitureModel {
  final String name;
  final String assets;
  final String harga;
  final String desc;

  FurnitureModel({
    required this.name,
    required this.assets,
    required this.harga,
    required this.desc,
  });
}

List<FurnitureModel> anFurniture = [
  FurnitureModel(
      name: "Kursi Minimalis",
      assets: 'assets/kursi.png',
      desc:
          'Kursi MONDY yang menggabungkan kenyamanan dan estetika. Berkat desainnya yang khas dan kenyamanan yang ditawarkan, kursi ini mampu menjadi favorit banyak keluarga masa kini.',
      harga: "1.220.000"),
  FurnitureModel(
      name: "Kursi Bar Besi",
      assets: 'assets/kursibar.png',
      desc:
          'Dudukan kursi dilapisi dengan kulit sintetis dan pada bagian kakinya terbuat dari besi anti karat yang kokoh.',
      harga: "1.499.000"),
  FurnitureModel(
      name: "Lemari Buffet",
      assets: 'assets/lemaribuffet.png',
      desc:
          'Memiliki total 9 tempat penyimpanan terbuka dan tertutup, Lemari Bufet Onyx dibuat dari material particle board dan MDF yang sudah dikurasi sebaik mungkin untuk hasil furnitur tahan lama.',
      harga: "2.499.000"),
  FurnitureModel(
      name: "Meja Kerja",
      assets: 'assets/mejakerja.png',
      desc:
          'Desain dari Meja Kerja Grits memang menarik dan tidak membosankan! Penampang luas, serta dilengkapi ekstra kompartemen membuat Meja Kerja Grits mampu menopang berbagai kebutuhanmu selama bekerja.',
      harga: "1.399.000"),
  FurnitureModel(
      name: "Sofa 2 Dudukan",
      assets: 'assets/sofa.png',
      desc:
          'Sofa ini dibuat dari rangka kayu solid pinewood, serta kaki sofa yang dibuat dari solid rubberwood.',
      harga: "2.099.000"),
  FurnitureModel(
      name: "Meja Tv",
      assets: 'assets/mejatv.png',
      desc:
          'Meja TV ini memiliki 2 kompartemen terbuka dan 2 kompartemen tertutup. Kombinasi ini memudahkanmu dalam menata dan memilih barang mana yang mau kamu simpan dan mana yang mau dipajang.',
      harga: "1.199.000"),
];

// final anFurniture = {
//   FurnitureModel(
//       name: "Kursi Makan Minimalis",
//       assets: 'assets/kursi.png',
//       desc:
//           'Kursi MONDY yang menggabungkan kenyamanan dan estetika. Berkat desainnya yang khas dan kenyamanan yang ditawarkan, kursi ini mampu menjadi favorit banyak keluarga masa kini.',
//       harga: 1220000),
//   FurnitureModel(
//       name: "Kursi Bar Besi",
//       assets: 'assets/kursibar.png',
//       desc:
//           'Dudukan kursi dilapisi dengan kulit sintetis dan pada bagian kakinya terbuat dari besi anti karat yang kokoh.',
//       harga: 1499000),
//   FurnitureModel(
//       name: "Kursi Makan Minimalis",
//       assets: 'assets/kursi.png',
//       desc:
//           'Kursi MONDY yang menggabungkan kenyamanan dan estetika. Berkat desainnya yang khas dan kenyamanan yang ditawarkan, kursi ini mampu menjadi favorit banyak keluarga masa kini.',
//       harga: 1220000),
//   FurnitureModel(
//       name: "Lemari Buffet",
//       assets: 'assets/lemaribuffet.png',
//       desc:
//           'Memiliki total 9 tempat penyimpanan terbuka dan tertutup, Lemari Bufet Onyx dibuat dari material particle board dan MDF yang sudah dikurasi sebaik mungkin untuk hasil furnitur tahan lama.',
//       harga: 2499000),
//   FurnitureModel(
//       name: "Meja Kerja",
//       assets: 'assets/mejakerja.png',
//       desc:
//           'Desain dari Meja Kerja Grits memang menarik dan tidak membosankan! Penampang luas, serta dilengkapi ekstra kompartemen membuat Meja Kerja Grits mampu menopang berbagai kebutuhanmu selama bekerja.',
//       harga: 1399000),
//   FurnitureModel(
//       name: "Meja Tv",
//       assets: 'assets/mejatv.png',
//       desc:
//           'Meja TV ini memiliki 2 kompartemen terbuka dan 2 kompartemen tertutup. Kombinasi ini memudahkanmu dalam menata dan memilih barang mana yang mau kamu simpan dan mana yang mau dipajang.',
//       harga: 1199000),
//   FurnitureModel(
//       name: "Sofa",
//       assets: 'assets/mejakerja.png',
//       desc:
//           'Sofa ini dibuat dari rangka kayu solid pinewood, serta kaki sofa yang dibuat dari solid rubberwood.',
//       harga: 2099000),
// };
