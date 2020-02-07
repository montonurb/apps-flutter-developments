import "dart:io";

calculoIdade() {
  print("Informe sua idade: ");
  var input = stdin.readLineSync();
  var idade = int.parse(input);

  if(idade >= 50){
    print("Você é idoso!");
  } else if (idade >= 18){
    print("Você é adulto!");
  } else if ( idade >= 12){
    print("Você é adolescente!");
  } else {
    print("Você é criança!");
  }
}