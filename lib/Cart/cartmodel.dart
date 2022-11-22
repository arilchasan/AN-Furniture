// import 'package:project_pas/Models/models.dart';

// class FurnitureClass {
//   static final List<String> values = [id, name, assets, harga];

//   // table name
//   static const cart_ = 'cart';

//   // column
//   static final String id = 'id';
//   static final String name = 'nama';
//   static final String assets = 'assets';
//   static final String harga = 'harga';

//   static fromMap(Map<String, Object?> e) {}
// }

// // column model
// class FurnitureCart {
//   final int? id;
//   final String? name;
//   final String? assets;
//   final String? harga;

//   FurnitureCart({
//     this.id,
//     this.name,
//     required this.assets,
//     this.harga,
//   });

//   factory FurnitureCart.fromMap(Map<String, dynamic> json) {
//     return FurnitureCart(
//       id: json['id'] as int?,
//       name: json['name'] as String?,
//       assets: json['assets'] as String?,
//       harga: json['harga'] as String?,
//     );
//   }

//   Map<String, dynamic> toMap() => {
//         FurnitureClass.id: id,
//         FurnitureClass.name: name,
//         FurnitureClass.assets: assets,
//         FurnitureClass.harga: harga,
//       };
// }

//  FurnitureModel fromJson(Map<String, Object?> json) => FurnitureModel(
//       name: json[FurnitureClass.name] as String,
//       assets: json[FurnitureClass.assets] as String, 
//       harga: json[FurnitureClass.harga] as String, desc: '', 
    
//       );
      
//  Map<String, Object?> toJson() => {
//         FurnitureClass.name:name,
//         FurnitureClass.assets:assets,
//         FurnitureClass.harga:harga,
//       };

//       FurnitureCart copy(
//           {
//           String? name,
//           String? assets,
//           String? harga,
//           }) =>
//       FurnitureCart(
//           name: name ?? this.name,
//           assets: assets ?? this.assets,
//           harga: harga ?? this.harga,
//           );