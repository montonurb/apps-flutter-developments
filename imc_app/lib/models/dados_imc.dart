class DadosImc {
  final double peso;
  final double altura;
  final DateTime dataAvaliacao;

  DadosImc(
    this.peso, this.altura, this.dataAvaliacao
  );

  @override
  String toString() {
    return 'DadosImc{peso: $peso, altura: $altura, data: $dataAvaliacao}';
  }
}