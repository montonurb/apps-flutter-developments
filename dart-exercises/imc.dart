import 'dart:io';

main(){

  print("****** CÁLCULO IMC ******");
  print("Informe o seu peso: ");
  var pesoText = stdin.readLineSync();
  var pesoConv = double.parse(pesoText);
  print("Informe a sua altura: ");
  var altuText = stdin.readLineSync();
  var altuConv = double.parse(altuText);

  var imc = pesoConv / (altuConv*altuConv);

  if(imc < 18){
    print("Você está desnutrido!");
  } else if (imc >= 18 && imc <= 25){
    print("Você está no peso ideal!");
  } else if (imc > 25 && imc <= 30){
    print("Você está acima do peso!");
  } else if (imc > 30 && imc <= 40) {
    print("Você está obeso!");
  } else {
    print("Você está obeso mórbido!");
  }
}