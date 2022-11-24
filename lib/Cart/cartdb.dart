import 'package:path/path.dart';
import 'package:project_pas/Cart/cartmodel.dart';
import 'package:sqflite/sqflite.dart';

class FurnitureDatabase {
  static final FurnitureDatabase instance = FurnitureDatabase.init();

  static Database? _database;

  FurnitureDatabase.init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('cart.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  // create database
  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final intType = "INTEGER NOT NULL";

    // creating table
    await db.execute('''CREATE TABLE ${FurnitureClass.favorite_}(
    ${FurnitureClass.nama} $textType,
    ${FurnitureClass.assets} $textType,
    ${FurnitureClass.harga} $textType)''');
  }

  // add data into dqatabase
  Future<int> create(FurnitureCart model) async {
    Database db = await instance.database;
    final query = await db.insert(FurnitureClass.favorite_, model.toMap());

    return query;
  }

  // to read and dsiplay the data from database
  Future<List<FurnitureCart>> readAll() async {
    Database db = await instance.database;

    final data = await db.query(FurnitureClass.favorite_);
    List<FurnitureCart> result =
        data.map((e) => FurnitureCart.fromMap(e)).toList();

    return result;
  }

  Future<bool> read(String? title) async {
    final db = await instance.database;

    final maps = await db.query(
      FurnitureClass.favorite_,
      columns: FurnitureClass.values,
      where: '${FurnitureClass.nama} = ?',
      whereArgs: [title],
    );

    if (maps.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }

  delete(String namateam) async {
    Database db = await instance.database;

    await db.delete(FurnitureClass.favorite_,
        where: "${FurnitureClass.nama} = ?", whereArgs: [namateam]);
  }

  // to delete data from database
  deleteTable(String table) async {
    Database db = await instance.database;

    await db.execute("DROP TABLE IF EXSIST $table");
  }
}
