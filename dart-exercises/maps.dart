import "dart:io";

List<Map<String, dynamic>> cadastros = [];

main() {
  //Map<tipo da variavel, tipo do valor> variavel = {}
/*   Map<String, dynamic> maps = {
    "nome": "Bruno Monteiro",
    "idade": 23,
    "cidade": "Parnaíba",
    "estado": "Piauí",
  };
  print(maps["nome"]);
  maps["nome"] = "Bruno Monteiro Cardoso";
  print(maps["nome"]);
  print(maps); */
  bool condicao = true;

  while (condicao) {
    print("Informe um comando:");
    String comando = stdin.readLineSync();
    if (comando == "sair") {
      print("=== Programa finalizado! ===");
      condicao = false;
    } else if (comando == "cadastrar") {
      cadastrar();
    } else if (comando == "imprimir") {
      print(cadastros);
    } else {
      print("=== Comando invalido! ===");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};
  print("Informe o seu nome:");
  cadastro["nome"] = stdin.readLineSync();

  print("Informe a sua idade:");
  cadastro["idade"] = stdin.readLineSync();

  print("Informe a sua cidade:");
  cadastro["cidade"] = stdin.readLineSync();

  print("Informe o seu estado:");
  cadastro["estado"] = stdin.readLineSync();
  cadastros.add(cadastro);
}
