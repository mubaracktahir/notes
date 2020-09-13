import 'package:path_provider/path_provider.dart';
import 'dart:io';

class Constants {
  static const String ID = 'id';
  static const String DESCRIPTION = 'description';
  static const String PRIORITY = 'priority';
  static const String DATE = 'date';
  static const String TABLE_NAME = 'note_table';
  static String _pathName = 'notes.db';
  static  getPath() async {
    Directory directory = await getApplicationDocumentsDirectory();
    return directory.path + _pathName;
  }
}
