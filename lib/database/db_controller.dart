import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DbController {
  static final DbController _instace = DbController._();

  factory DbController() {
    return _instace;
  }

  DbController._();

  late Database _database;

  Future<void> initData() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path, 'app.db.sql');
    _database = await openDatabase(
      path,
      onCreate: (Database db, int version) async{
        await db.execute('CREATE TABLE users('
            'Id INTEGER PRIMARY KEY AUTOINCELEMENT,'
            'NAME TEXT,'
            'EMAIL TEXT'
            ')'
        );
        await db.execute('CREATE TABLE notes('
        'id INTEGER PRIMARY KEY AUTOINCELEMENT,'
        'name TEXT,'
        'info TEXT,'
        'user_id INTEGER,'
        'FORENGE KEY (user_id) REFERENCESS users (id) ON DELETE CASCADE'
        );

            },
      onUpgrade: (Database db, int oldVersion, int newVersion) {},
      onDowngrade: (Database db, int oldVersion, int newVersion) {},
    );
  }
}
