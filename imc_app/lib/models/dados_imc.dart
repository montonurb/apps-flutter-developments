class DadosImc {
  final int id;
  final double peso;
  final double altura;
  final String dataAvaliacao;

  DadosImc(
    this.id, this.peso, this.altura, this.dataAvaliacao
  );

  @override
  String toString() {
    return 'DadosImc{Id: $id, peso: $peso, altura: $altura, data: $dataAvaliacao}';
  }
}