class Pagamento {
  final String cpf;
  final double valor;

  Pagamento(this.cpf, this.valor);

  @override
  String toString() {
    return 'Pagamento{cpf: $cpf, valor: $valor}';
  }
}