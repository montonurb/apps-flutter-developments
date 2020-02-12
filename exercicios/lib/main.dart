
import 'dart:io';
import 'src/produto.dart';
main(List<String> args) {
  
  Produto produto = Produto();

  print("Informe o nome do produto:");
  produto.nome = stdin.readLineSync();
  print("Informe o valor unitário:");
  produto.valorUnitario = double.parse(stdin.readLineSync());
  print("Informe a quantidade comprada:");
  produto.quantidade = int.parse(stdin.readLineSync());


  print("Você comprou ${produto.nome} e o total é R\$ ${produto.valorTotal()}.");

}