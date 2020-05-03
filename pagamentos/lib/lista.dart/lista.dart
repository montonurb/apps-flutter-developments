import 'package:flutter/material.dart';
import 'package:pagamentos/lista.dart/formulario.dart';
import 'package:pagamentos/models/pagamento.dart';

const _tituloAppBar = 'Pagamentos';

class ListaPagamentos extends StatefulWidget {
  final List<Pagamento> _pagamentos = List();
  @override
  _ListaPagamentosState createState() => _ListaPagamentosState();
}

class _ListaPagamentosState extends State<ListaPagamentos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ListView.builder(
        itemCount: widget._pagamentos.length,
        itemBuilder: (context, indice) {
          final pagamento = widget._pagamentos[indice];
          return ItemPagamento(pagamento);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return FormularioPagamento();
          })).then((pagamentoRecebido) => _atualiza(pagamentoRecebido),
          );
        },
      ),
    );
  }

  void _atualiza(Pagamento pagamentoRecebido) {
    if (pagamentoRecebido != null) {
      setState(() {
        widget._pagamentos.add(pagamentoRecebido);
      });
    }
  }
}

class ItemPagamento extends StatelessWidget {

  final Pagamento _pagamento;

  ItemPagamento(this._pagamento);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text('R\$${_pagamento.valor.toString()}'),
        subtitle: Text('CPF: ${_pagamento.cpf.toString()}'),
      ),
    );
  }
}