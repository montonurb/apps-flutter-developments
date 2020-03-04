import 'package:flutter/material.dart';
import 'dart:math';
class Jogo extends StatefulWidget {
  @override
  _JogoState createState() => _JogoState();
}

class _JogoState extends State<Jogo> {

  var _imagemApp = AssetImage("imagens/padrao.png");
  var _mensagem = "Escolha uma opção abaixo";
  var _userWin = 0;
  var _computerWin = 0;
  var _empate = 0;
  

  void _opcaoSelecionada(String escolhaUsuario){
    var opcoes = [
      "papel",
      "pedra",
      "tesoura"
    ];
    var numero = Random().nextInt(3);
    var escolhaApp = opcoes[numero];

    switch(escolhaApp){
      case "papel":
        setState(() {
          this._imagemApp = AssetImage("imagens/papel.png");
        });
        break;
      case "pedra":
        setState(() {
          this._imagemApp = AssetImage("imagens/pedra.png");
        });
        break;
      case "tesoura":
        setState(() {
          this._imagemApp = AssetImage("imagens/tesoura.png");
        });
        break;
    }
    //Validação do ganhador

    //Usuario ganha
    if(
      (escolhaUsuario == "pedra" && escolhaApp == "tesoura") ||
      (escolhaUsuario == "tesoura" && escolhaApp == "papel") ||
      (escolhaUsuario == "papel" && escolhaApp == "pedra")
    ){
      setState(() {
        this._mensagem = "Parabéns! Você ganhou! :)";
        _userWin += 1;
      });
    //Usuario perde
    } else if(
      (escolhaApp == "pedra" && escolhaUsuario == "tesoura") ||
      (escolhaApp == "tesoura" && escolhaUsuario == "papel") ||
      (escolhaApp == "papel" && escolhaUsuario == "pedra")
    ){
      setState(() {
        this._mensagem = "Você perdeu! :(";
        _computerWin += 1;
      });
    //Empate
    } else{
      setState(() {
        this._mensagem = "Empatamos! :v";
        _empate += 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JokenPo"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          //1) Text
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Escolha do App",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          
          //2)Image
          Image(image: this._imagemApp,),
          
          //3)Text Result
          Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              this._mensagem,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          
          //4)Line with 3 images
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () => _opcaoSelecionada("papel"),
                child: Image.asset("imagens/papel.png", height: 100,),
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada("pedra"),
                child: Image.asset("imagens/pedra.png", height: 100,),
              ),
              GestureDetector(
                onTap: () => _opcaoSelecionada("tesoura"),
                child: Image.asset("imagens/tesoura.png",height: 100),
              ),
            ]
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 32),
              child: Text(
                "Você: $_userWin",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Computador: $_computerWin",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Text(
                "Empate: $_empate",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ]
          ),
        ]
      ),
    );
  }
}