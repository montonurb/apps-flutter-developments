import 'dart:io';

main(){

  bool condition = true;

  while(condition){
    print("Escreva um texto: ");
    String text = stdin.readLineSync();
    if(text == "sair"){
      condition = false;
      print("Programa finalizado!");
    } else {
      print("Você escreveu: $text");
    }
  }
}