class Pessoa{
  String nome;
  int idade;
  double altura;
  double peso;

  //calcular o IMC
  double imc() => peso / ( altura*altura);  // isso chama-se Arrow function

/*   Isso equivale a isto:
  double imc(){
    return peso / (altura * altura);
  } */

  //calcular maioridade
  bool maiorIdade() => idade >= 18;
}