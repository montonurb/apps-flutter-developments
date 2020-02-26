import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false, //Para tirar a faixa de Debug da aplicação
    home: HomeStateful() ,
  ));

}

class HomeStateful extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomeStateful> {
  var _text = "Bruno Monteiro";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: (){
                setState(() {
                  _text = "Clicou com sucesso!";
                });
              },
              //color: Colors.amber, //caso eu queira mudar a cor do botão
              child: Text("Clique aqui"),
            ),
            Text("Nome: $_text")
          ],
        ),
      ),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var _titulo = "Instagram";

    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text("Sua foto aqui."),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.lightGreen,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: <Widget>[
              Text("Texto 1."),
              Text("Texto 2."),
              Text("Texto 2.")
            ]
          ),
        ),
      ),
    );
  }
}