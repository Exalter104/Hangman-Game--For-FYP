import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class HangmanDatabase {
  static final HangmanDatabase _instance = HangmanDatabase._internal();

  factory HangmanDatabase() => _instance;

  HangmanDatabase._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    // If _database is null, initialize it
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "hangman.db");
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(
      "CREATE TABLE words (id INTEGER PRIMARY KEY, word TEXT)",
    );
    // Insert initial words into the database
    await db.rawInsert("INSERT INTO words (word) VALUES ('apple')");
    await db.rawInsert("INSERT INTO words (word) VALUES ('banana')");
    // Add more words as needed
  }

  Future<List<String>> getWords() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('words');
    return List.generate(maps.length, (i) => maps[i]['word'] as String);
  }
}
