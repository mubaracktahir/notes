import 'package:notes/models/Note.dart';
import 'package:notes/utils/customviews/constants.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper;
  static Database _database;

  factory DatabaseHelper() {
    if (_databaseHelper == null)
      _databaseHelper = DatabaseHelper._createInstance();
    return _databaseHelper;
  }

  Future<Database> initializeDatabase() async {
    var database =
        openDatabase(Constants.getPath(), version: 1, onCreate: _createDb);
    return database;
  }

  DatabaseHelper._createInstance();

  Future<Database> get database async {
    if (_database == null) _database = await initializeDatabase();
    return _database;
  }

  _createDb(Database db, int newVersion) async {
    await db.execute('CREATE TABLE ${Constants.TABLE_NAME}(${Constants.ID} ' +
        'INTEGER PRIMARY KEY AUTOINCREMENT, ${Constants.DESCRIPTION} TEXT,' +
        '${Constants.PRIORITY} INTEGER, ${Constants.DATE} TEXT )');
  }

  Future<List<Map<String, dynamic>>> getAllNote() async {
    Database db = await this.database;
    var result = db.rawQuery(
        'SELECT * FROM ${Constants.TABLE_NAME} order by ${Constants.PRIORITY} ASC');
    return result;
  }

  Future<int> insertNote(Note note) async {
    Database db = await this.database;
    var result = await db.insert(Constants.TABLE_NAME, note.toMap());
    return result;
  }

  Future<int> updateNote(Note note) async {
    Database db = await this.database;
    var result = await db.update(Constants.TABLE_NAME, note.toMap(),
        where: '${Constants.PRIORITY} =? ', whereArgs: [note.id]);
    return result;
  }

  Future<int> getCount() async {
    Database db = await this.database;
    var x = await db.rawQuery('SELECT (*) FROM ${Constants.TABLE_NAME}');
    int result = Sqflite.firstIntValue(x);
    return result;
  }
}
