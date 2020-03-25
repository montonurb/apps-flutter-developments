import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaAppState extends State<PerguntaApp>{
  var perguntaSelecionada = 0;

  void responder(){
    perguntaSelecionada++;

    print(perguntaSelecionada);
  }

  @override
  Widget build(BuildContext context){

    final perguntas = [
      'Qual a sua cor favorita?',
      'Qual é o seu animal favorito?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: <Widget>[
            Text(perguntas[0]),
            RaisedButton(
              child: Text('Valor 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Valor 2'),
              onPressed: responder
            ),
            RaisedButton(
              child: Text('Valor 3'),
              onPressed: responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget{
  
  PerguntaAppState createState(){
    return PerguntaAppState();
  }
}