import 'package:notes/utils/customviews/constants.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper _databaseHelper;

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

  _createDb(Database db, int newVersion) async {
    await db.execute('CREATE TABLE ${Constants.TABLE_NAME}(${Constants.ID} ' +
        'INTEGER PRIMARY KEY AUTOINCREMENT, ${Constants.DESCRIPTION} TEXT,' +
        '${Constants.PRIORITY} INTEGER, ${Constants.DATE} TEXT )');
  }
}
