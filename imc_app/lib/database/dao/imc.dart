import 'package:imc_app/database/database.dart';
import 'package:imc_app/models/dados_imc.dart';
import 'package:sqflite/sqflite.dart';


//DAO = Data Access Object (Objeto de Acesso aos Dados)
class ImcDao {
  static const String tableSql = 'CREATE TABLE $_tableName('
      '$_id INTEGER PRIMARY KEY, '
      '$_peso REAL, '
      '$_altura REAL, '
      '$_dataAvaliacao)';
  static const String _tableName = 'imc';
  static const String _id = 'id';
  static const String _peso = 'peso';
  static const String _altura = 'altura';
  static const String _dataAvaliacao = 'dataAvaliacao';

  Future<int> save(DadosImc imc) async {
    final Database db = await getDatabase();
    Map<String, dynamic> imcMap = _toMap(imc);
    return db.insert(_tableName, imcMap);
  }

  Map<String, dynamic> _toMap(DadosImc imc) {
    final Map<String, dynamic> imcMap = Map();
    imcMap[_peso] = imc.peso;
    imcMap[_altura] = imc.altura;
    imcMap[_dataAvaliacao] = imc.dataAvaliacao;
    return imcMap;
  }

  Future<List<DadosImc>> findAll() async {
    final Database db = await getDatabase();
    final List<Map<String, dynamic>> result = await db.query(_tableName);
    List<DadosImc> imcs = _toList(result);
    return imcs;
  }

  List<DadosImc> _toList(List<Map<String, dynamic>> result) {
    final List<DadosImc> imcs = List();
    for(Map<String, dynamic> row in result) {
      final DadosImc imc = DadosImc(
        row[_id],
        row[_peso],
        row[_altura],
        row[_dataAvaliacao],
      );
      imcs.add(imc);
    }
    return imcs;
  }
}