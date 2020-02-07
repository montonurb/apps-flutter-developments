import 'package:objeto/src/animal.dart';
class Cachorro extends Animal{
  String nome;
  Cachorro({this.nome, barulho}): super(barulho: barulho);
}