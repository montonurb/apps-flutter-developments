import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  List<String> gastosLista = ['Cartão Nubank!', 'Tim Plano Mensal'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Despesas',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Despesas'),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ListView(
                  children: const <Widget>[
                    Card(child: ListTile(title: Text('Fatura Nubank.......... RS 289.98'))),
                  ]
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
