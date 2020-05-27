import 'package:imc_app/database/dao/imc.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

Future<Database> getDatabase() async {
  final String path = join(await getDatabasesPath(), 'imc.db');
  return openDatabase(path, onCreate: (db, version) {
      db.execute(ImcDao.tableSql);
    }, version: 1,
    onDowngrade: onDatabaseDowngradeDelete,
    );
}