import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    String path = join(await getDatabasesPath(), 'hangman.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: (Database db, int version) async {
        await db
            .execute('CREATE TABLE words (id INTEGER PRIMARY KEY, word TEXT)');
        // Insert your word data here. For example:
        await db.execute('INSERT INTO words (word) VALUES ("PAKISTAN")');
        await db.execute('INSERT INTO words (word) VALUES ("AFGHAN")');
        await db.execute('INSERT INTO words (word) VALUES ("DUBAI")');
        await db.execute('INSERT INTO words (word) VALUES ("INDIA")');

        await db.execute('INSERT INTO words (word) VALUES ("IRON")');
        await db.execute('INSERT INTO words (word) VALUES ("LONDON")');

        // Add more words as needed.
      },
    );
  }

  Future<List<String>> fetchWords() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('words');
    return List.generate(maps.length, (i) {
      return maps[i]['word'] as String;
    });
  }
}
