import 'package:flutter/material.dart';
import 'package:imc_app/models/dados_imc.dart';
import 'package:imc_app/screens/formulario.dart';
import 'package:imc_app/screens/menu_drawer.dart';
import 'package:date_format/date_format.dart';

class ImcList extends StatefulWidget {
  final List<DadosImc> _imcs = List();
  @override
  _ImcListState createState() => _ImcListState();
}

class _ImcListState extends State<ImcList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(title: Text('Lista')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: widget._imcs.length,
        itemBuilder: (context, indice) {
          final imc = widget._imcs[indice];
          return ItemImc(imc);
        }
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioIMC();
          })).then(
            (imcRecebido) => _atualiza(imcRecebido),
          );
        },
        backgroundColor: Colors.teal[400],
      ),
    );
  }

  void _atualiza(DadosImc imcRecebido) {
    if (imcRecebido != null) {
      setState(() {
        widget._imcs.add(imcRecebido);
      });
    }
  }
}

class ItemImc extends StatelessWidget {
  final DadosImc _imc;
  ItemImc(this._imc);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.teal[100],
      elevation: 10,
      margin: EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'ª AVALIAÇÃO',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  '${formatDate(_imc.dataAvaliacao, [dd,'/', mm, '/', yyyy])}',
                  style: TextStyle(fontSize: 12),
                ),
              )
            ]),
            Row(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Peso: ${_imc.peso.toString()}Kg'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Altura: ${_imc.altura.toString()}cm'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Imc: ${calcImc(_imc.peso, _imc.altura).toStringAsPrecision(4)}'),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

calcImc(double peso, double altura) {

  double newPeso = peso;
  double newAltura = altura;

  final double newImc = (newPeso / (newAltura * newAltura));

  return newImc;

}