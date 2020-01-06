import 'dart:io';

main(){
  print("Informe a sua idade: ");
  var text = stdin.readLineSync();
  var idade = int.parse(text);

  if(idade >= 50){
    print("Você é um idoso!");
  } else if ((idade >= 18) && (idade < 50)){
    print("você é um adulto!");
  } else if ((idade >= 12) && (idade < 18)){
    print("você é um adolescente!");
  } else {
    print("você é uma criança!");
  }
}