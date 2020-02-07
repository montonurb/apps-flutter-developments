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
import 'package:objeto/src/gato.dart';
import 'package:objeto/src/cachorro.dart';
import 'package:objeto/src/grilo.dart';
import 'package:objeto/src/macaco.dart';

main(List<String> args) {
  Gato gato = Gato(nome: "Lerry", barulho: "miau");
  Cachorro cachorro = Cachorro(nome: "Snoop", barulho: "au au");
  Grilo grilo = Grilo(nome: "Don", barulho: "cri");
  Macaco macaco = Macaco(nome: "George", barulho: "uh ah-ah");

  print("O gato ${gato.nome} faz ${gato.barulho}.");
  print("O cahorro ${cachorro.nome} faz ${cachorro.barulho}.");
  print("O grilo ${grilo.nome} faz ${grilo.barulho}.");
  print("O macaco ${macaco.nome} faz ${macaco.barulho}.");
}