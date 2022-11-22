// import 'dart:math';

// import 'package:path/path.dart';
// import 'package:project_pas/Cart/cartmodel.dart';
// import 'package:sqflite/sqflite.dart';

// class Cartdatabase {
//   static final Cartdatabase instance = Cartdatabase.init();

//   static Database? _database;

//   Cartdatabase.init();

//   Future<Database> get database async {
//     if (_database != null) return _database!;

//     _database = await _initDB('cart.db');
//     return _database!;
//   }

//   Future<Database> _initDB(String filePath) async {
//     final dbPath = await getDatabasesPath();
//     final path = join(dbPath, filePath);

//     return await openDatabase(path, version: 1, onCreate: _createDB);
//   }

//   // create database
//   Future _createDB(Database db, int version) async {
//     final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
//     final textType = 'TEXT NOT NULL';

//     // creating table
//     await db.execute('''
//     CREATE TABLE ${FurnitureClass.cart_}(
//     ${FurnitureClass.id} $idType,
//     ${FurnitureClass.name} $textType,
//     ${FurnitureClass.assets} $textType,
//     ${FurnitureClass.harga} $textType
//     )
//     ''');
//   }

//   // add data into dqatabase
//   Future<int> create(FurnitureClass model) async {
//     Database db = await instance.database;
//     final query = await db.insert(FurnitureClass.cart_,model.toMap());

//     return query;
//   }

//   // to read and dsiplay the data from database
//   Future<List> readAll() async {
//     Database db = await instance.database;

//     final data = await db.query(FurnitureClass.cart_);
//     List<dynamic> result = data.map((e) => FurnitureClass.fromMap(e)).toList();

//     return result;
//   }

//   Future<bool> read(String? title) async {
//     final db = await instance.database;

//     final maps = await db.query(
//       FurnitureClass.cart_,
//       columns: FurnitureClass.values,
//       where: '${FurnitureClass.name} = ?',
//       whereArgs: [title],
//     );

//     if (maps.isNotEmpty) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   delete(String nama) async {
//     Database db = await instance.database;

//     await db.delete(FurnitureClass.cart_,
//         where: "${FurnitureClass.name} = ?", whereArgs: [nama]);
//   }

//   // to delete data from database
//   deleteTable(String table) async {
//     Database db = await instance.database;

//     await db.execute("DROP TABLE IF EXSIST $table");
//   }
// }
