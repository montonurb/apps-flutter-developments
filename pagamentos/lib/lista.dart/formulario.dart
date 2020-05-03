import 'package:flutter/material.dart';
import 'package:pagamentos/components/pagar.dart';
import 'package:pagamentos/models/pagamento.dart';

const _tituloAppBar = 'Realizar Pagamento';

const _dicaCampoCpf = '00000000000';
const _rotuloCampoCpf = 'CPF';

const _dicaCampoValor = '00.00';
const _rotuloCampoValor = 'Valor';

const _textoBotao = 'Pagar';

class FormularioPagamento extends StatefulWidget {
  @override
  _FormularioPagamentoState createState() => _FormularioPagamentoState();
}

class _FormularioPagamentoState extends State<FormularioPagamento> {

  final TextEditingController _controladorCampoCpf = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: Column(
        children: <Widget>[
          Pagar(
            controlador: _controladorCampoCpf,
            dica: _dicaCampoCpf,
            rotulo: _rotuloCampoCpf,
          ),
          Pagar(
            controlador: _controladorCampoValor,
            dica: _dicaCampoValor,
            rotulo: _rotuloCampoValor,
            icone: Icons.monetization_on,
          ),
          RaisedButton(
            child: Text(_textoBotao),
            onPressed: () => _criaPagamento(context),
          ),
        ],
      ),
    );
  }

  void _criaPagamento(BuildContext context) {
    final String cpf = _controladorCampoCpf.text;
    final double valor = double.tryParse(_controladorCampoValor.text);
    if (cpf != null && valor != null) {
      final pagamentoCriado = Pagamento(cpf, valor);
      Navigator.pop(context, pagamentoCriado);
    }
  }
}