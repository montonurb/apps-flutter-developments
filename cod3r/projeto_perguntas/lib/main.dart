import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;
  final _perguntas = const [
      {
        'texto': 'Qual a sua cor favorita?',
        'respostas': [
          {'texto': 'Preto', 'pontuacao': 10},
          {'texto': 'Vermelho', 'pontuacao': 5},
          {'texto': 'Verde', 'pontuacao': 3},
          {'texto': 'Branco', 'pontuacao': 1},
        ]
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': [
          {'texto': 'Coelho', 'pontuacao': 10},
          {'texto': 'Cobra', 'pontuacao': 5},
          {'texto': 'Elefante', 'pontuacao': 3},
          {'texto': 'Leão', 'pontuacao': 1},
        ]
      },
      {
        'texto': 'Qual é o seu instrutor favorito?',
        'respostas': [
          {'texto': 'Leonardo', 'pontuacao': 10},
          {'texto': 'João', 'pontuacao': 5},
          {'texto': 'Maria', 'pontuacao': 3},
          {'texto': 'Pedro', 'pontuacao': 1},
        ]
      }
    ];

  void _responder(int pontuacao){
    if (temPerguntaSelecionada){
      setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
    }
  }

  void _reiniciarQuiz(){
    setState(() {
      _perguntaSelecionada = 0;
      _pontuacaoTotal = 0;
    });
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
          ? Quiz(
            perguntas: _perguntas,
            perguntaSelecionada: _perguntaSelecionada,
            quandoResponder: _responder,
          )
          : Result(_pontuacaoTotal, _reiniciarQuiz),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}