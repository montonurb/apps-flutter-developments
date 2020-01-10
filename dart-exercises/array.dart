import 'dart:io';

main(){
  var nome = ["Bruno", "Monteiro", "Cardoso"];

  bool condition = true;

  /*
  Pra consultar um local da array especifico:
  print(nome[0]);
  */

  /**
   Para reomover:
   nome.remove("Cardoso"); // ou nome.removeAt(0);
   */

  while(condition){
    print(nome.length);
    print("Informe um nome: ");
    String text = stdin.readLineSync();
    if(text == "sair"){
      print("Programa finalizado!");
      print(nome.length);
      condition = false;
    } else {
      nome.add(text);
    }
    print("\n Nome informado:\n$nome");
  }
}