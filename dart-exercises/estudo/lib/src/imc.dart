import 'dart:io';

//Comentarios em uma linha
/**
 * 
 * Comentarios em multline
 */
calculoImc(){

  print("****** CÁLCULO IMC ******");
  pedirInfo();
}

pedirInfo(){
  print("Informe o seu peso: ");
  String pesoText = stdin.readLineSync();
  double pesoConv = double.parse(pesoText);
  
  print("Informe a sua altura: ");
  String altuText = stdin.readLineSync();
  double altuConv = double.parse(altuText);

  calcImc(pesoConv, altuConv);
}

calcImc(double peso, double altura){
  double imc = peso / (altura*altura);

  imprimirResultado(imc);
}

imprimirResultado(double imc){
  if(imc < 18){
    print("Seu imc é $imc. Você está desnutrido!");
  } else if (imc >= 18 && imc <= 25){
    print("Seu imc é $imc. Você está no peso ideal!");
  } else if (imc > 25 && imc <= 30){
    print("Seu imc é $imc. Você está acima do peso!");
  } else if (imc > 30 && imc <= 40) {
    print("Seu imc é $imc. Você está obeso!");
  } else {
    print("Seu imc é $imc. Você está obeso mórbido!");
  }
}