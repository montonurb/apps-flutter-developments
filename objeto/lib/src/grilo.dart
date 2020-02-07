import 'package:objeto/src/animal.dart';

class Grilo extends Animal{
  String nome;
  Grilo({this.nome, barulho}): super(barulho: barulho);
}