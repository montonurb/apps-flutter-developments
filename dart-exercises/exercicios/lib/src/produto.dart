class Produto{
  String nome;
  double valorUnitario;
  int quantidade;

  Produto({this.nome, this.valorUnitario, this.quantidade});

  double valorTotal(){
    if (quantidade <= 10){
      return (valorUnitario * quantidade);
    } else if (quantidade > 10 && quantidade <= 20 ){
      return (valorUnitario * quantidade) - ((valorUnitario * quantidade) * 0.10);
    } else if (quantidade > 20 && quantidade <= 50 ){
      return (valorUnitario * quantidade) - ((valorUnitario * quantidade) * 0.20);
    } else {
      return (valorUnitario * quantidade) - ((valorUnitario * quantidade) * 0.25);
    }
  }
}