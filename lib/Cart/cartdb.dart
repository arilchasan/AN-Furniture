// import 'package:project_pas/Cart/cartmodel.dart';
// import 'package:project_pas/Models/models.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';

// class Cartdb {
//   static final Cartdb instance = Cartdb.init();
//   static Database? _database;

//   Cartdb.init();

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

//   Future _createDB(Database db, int version) async {
//     final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
//     final textType = 'TEXT NOT NULL';

//     await db.execute('''CREATE TABLE $cart (
//     ${FurnitureClass.name} $idType,
//     ${FurnitureClass.harga} $textType,
//     ${FurnitureClass.assets} $textType,
//     )''');
//   }

//   Future<FurnitureClass> create(FurnitureClass news) async {
//     final db = await instance.database;

//     final id = await db.insert(tableCart, news.toJson());
//     return news.copy(id: id);
//   }

//   Future<bool> read(String? name) async {
//     final db = await instance.database;

//     final maps = await db.query(
//       tableCart,
//       columns: FurnitureClass.values,
//       where: '${FurnitureClass.name} = ?',
//       whereArgs: [name],
//     );

//     if (maps.isNotEmpty) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   Future<List<FurnitureClass>> readAll() async {
//     final db = await instance.database;

//     final result = await db.query(tableCart);

//     return result.map((json) => FavoriteModel.fromJson(json)).toList();
//   }

//   delete(String? name) async {
//     final db = await instance.database;
//     try {
//       await db.delete(
//         tableCart,
//         where: '${FurnitureClass.name} = ?',
//         whereArgs: [name],
//       );
//     } catch (e) {
//       print(e);
//     }
//   }

//   update(FurnitureClass favmodel) async {
//     final db = await instance.database;
//     try {
//       db.rawUpdate('''
//     UPDATE ${tableFavorite} 
//     SET ${FurnitureClass.name} = ?, ${FurnitureClass.assets} = ?, ${FurnitureClass.harga} = ?, 
//     WHERE ${FurnitureClass.name} = ?
//     ''', [
//         FurnitureClass.name,
//         FurnitureClass.assets,
//         FurnitureClass.harga,
//       ]);
//     } catch (e) {
//       print('error: ' + e.toString());
//     }
//   }

//   Future close() async {
//     final db = await instance.database;
//     db.close();
//   }
// }
