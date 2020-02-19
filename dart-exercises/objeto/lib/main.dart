/* import 'src/gato.dart';
import 'src/cachorro.dart';
import 'src/grilo.dart';
import 'src/macaco.dart';
/**import 'package:objeto/src/pessoa.dart';

main(List<String> args) {
  Pessoa pessoa = Pessoa(nome: "Bruno", idade: 23, sexo: "M");
  print(pessoa.nome);
  print(pessoa.idade);
  print(pessoa.sexo);

  print(pessoa.peso);
  print(pessoa.altura);
}
**/


main(List<String> args) {
  Gato gato = Gato(nome: "Lerry", barulho: "miau");
  Cachorro cachorro = Cachorro(nome: "Snoop", barulho: "au au");
  Grilo grilo = Grilo(nome: "Don", barulho: "cri");
  Macaco macaco = Macaco(nome: "George", barulho: "uh ah-ah");

  print("O gato ${gato.nome} faz ${gato.barulho}.");
  print("O cahorro ${cachorro.nome} faz ${cachorro.barulho}.");
  print("O grilo ${grilo.nome} faz ${grilo.barulho}.");
  print("O macaco ${macaco.nome} faz ${macaco.barulho}.");
} */
import 'dart:io';
import 'src/pessoa2.dart';

Pessoa pessoa = Pessoa();

main(List<String> args) {
  print("Informe o nome:");
  pessoa.nome = stdin.readLineSync();
  print("Informe a idade:");
  pessoa.idade = int.parse(stdin.readLineSync());
  print("Informe sua altura:");
  pessoa.altura = double.parse(stdin.readLineSync());
  print("Informe seu peso:");
  pessoa.peso = double.parse(stdin.readLineSync());


  print("--------------------------\n\n\n\n");
  print("Nome: ${pessoa.nome}");
  print("IMC: ${pessoa.imc()}");
  print("Maioridade: ${pessoa.maiorIdade()}");
}