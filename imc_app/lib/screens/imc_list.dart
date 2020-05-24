import 'package:flutter/material.dart';
import 'package:imc_app/models/dados_imc.dart';
import 'package:imc_app/screens/formulario.dart';

class ImcList extends StatefulWidget {
  final List<DadosImc> _imcs = List();
  @override
  _ImcListState createState() => _ImcListState();
}

class _ImcListState extends State<ImcList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Teste'),
      ),
      body: ListView.builder(
        itemCount: widget._imcs.length,
        itemBuilder: (context, indice) {
          final imc = widget._imcs[indice];
          return ItemImc(imc);
        },
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
                'AVALIAÇÃO',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  '12/01/2020',
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
                      child: Text('Imc: '),
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

// return Scaffold(
//     drawer: MenuDrawer(),
//     appBar: AppBar(title: Text('Lista')),
//     body: GridView.count(
//       crossAxisCount: 2,
//       children: <Widget>[
//         ListView.builder(
//           itemCount: widget._imcs.length,
//           itemBuilder: (context, indice) {
//             final imc = widget._imcs[indice];
//             return ItemImc(imc);
//           },
//         ),
//         floatingActionButton: FloatingActionButton(
//     child: Icon(Icons.add),
//     onPressed: () {
//       Navigator.push(context, MaterialPageRoute(builder: (context) {
//         return FormularioIMC();
//       })).then(
//         (imcRecebido) => _atualiza(imcRecebido),
//       );
//     },
//   ),
//       ],
//     ));
