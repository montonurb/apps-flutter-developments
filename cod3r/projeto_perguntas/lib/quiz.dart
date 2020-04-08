import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function() quandoResponder;

  Quiz({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.quandoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }
  
  @override
  Widget build(BuildContext context) {
    List<String> respostas = temPerguntaSelecionada
    ? perguntas[perguntaSelecionada]['respostas']
    : null;

    return Column(
      children: <Widget>[
        Question(perguntas[perguntaSelecionada]['texto']),
          ...respostas.map((t) => Resposta(t, quandoResponder)).toList(),
      ],
    );
  }
}