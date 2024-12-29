import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {

  static final DatabaseHelper _instance = DatabaseHelper._internal();
  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'example.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE strings(
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          value TEXT,
          complete TEXT
        )
      ''');
      },
    );
  }

  Future<int> insertString(String value, String complete, ) async {
    final db = await DatabaseHelper().database;

    return await db.insert(
      'strings',
      {'value': value,'complete': complete},
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }
  Future<int> deleteString(int id) async {
    final db = await DatabaseHelper().database;

    return await db.delete(
      'strings',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<int> updateString(int id, String newValue) async {
    final db = await DatabaseHelper().database;

    return await db.update(
      'strings',
      {'complete': newValue},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  Future<List<Map<String, dynamic>>> getStrings() async {
    final db = await DatabaseHelper().database;

    return await db.query('strings');
  }

}

