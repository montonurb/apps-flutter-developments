import 'package:flutter/material.dart';
import 'package:imc_app/models/dados_imc.dart';
import 'package:imc_app/screens/formulario.dart';
import 'package:imc_app/screens/menu_drawer.dart';
import 'package:imc_app/database/dao/imc.dart';

class ImcList extends StatefulWidget {
  final List<DadosImc> imcs = List();
  @override
  _ImcListState createState() => _ImcListState();
}

class _ImcListState extends State<ImcList> {
  final ImcDao _dao = ImcDao();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(title: Text('Lista')),
      body: FutureBuilder<List<DadosImc>>(
        initialData: List(),
        future: _dao.findAll(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              break;
            case ConnectionState.waiting:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Text("Loading..."),
                  ],
                ),
              );
              break;
            case ConnectionState.active:
              break;
            case ConnectionState.done:
              final List<DadosImc> imcs = snapshot.data;
              if (imcs.length == 0) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.sentiment_dissatisfied,
                        size: 75,
                        color: Colors.teal[400],
                      ),
                      Text("Sem avaliações por enquanto!",
                          style: TextStyle(fontSize: 22)),
                    ],
                  ),
                );
              }
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final DadosImc imc = imcs[index];
                  return _ItemImc(imc);
                },
                itemCount: imcs.length,
              );
              break;
          }
          return Text("Unkown erro!");
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal[400],
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => FormularioIMC(),
                ),
              )
              .then((value) => setState(
                  () {})); //useu o setState aqui para quando eu inserir pelo botão de +,  atualizar imediatamente quando volta pra lista
        },
      ),
    );
  }
}

class _ItemImc extends StatelessWidget {
  final DadosImc imc;
  _ItemImc(this.imc);

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
                '${imc.id}ª AVALIAÇÃO',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: Text(
                  '${imc.dataAvaliacao}',
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
                      child: Text('Peso: ${imc.peso.toString()}Kg'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Altura: ${imc.altura.toString()}m'),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                          'Imc: ${calcImc(imc.peso, imc.altura).toStringAsPrecision(4)}'),
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
