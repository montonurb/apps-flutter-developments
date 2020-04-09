import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int pontuation;
  final void Function() quandoReiniciarQuiz;

  Result(this.pontuation, this.quandoReiniciarQuiz);

  String get fraseResultado{
    if(pontuation < 8){
      return 'Parabéns';
    } else if (pontuation < 12) {
      return 'Você é bom!';
    } else if (pontuation < 16) {
      return 'Impressionante';
    } else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        FlatButton(
          child: Text(
            'Reiniciar',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          textColor: Colors.blue,
          onPressed: quandoReiniciarQuiz,
          )
      ]
    );
  }
}