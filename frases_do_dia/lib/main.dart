import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    title: "Frases do dia",
    home: Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Text(
            "Lorem ipsum ",
            style: TextStyle(
              fontSize: 35,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal, //ao invés de usar normal, posso colocar w100, para definir
              letterSpacing: 0,
              wordSpacing: 0,
              decoration: TextDecoration.underline,
              decorationColor: Colors.greenAccent,
              decorationStyle: TextDecorationStyle.solid,
              color: Colors.black
            ),
          )
        ],
      ),
    ),
  ));

}