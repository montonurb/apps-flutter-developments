import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    //debugShowCheckedModeBanner: false, //Para tirar a faixa de Debug da aplicação
    title: "Frases do dia",
    home: Container(
      //color: Colors.white,
      margin: EdgeInsets.only(top: 40), //espaçamento interno
      //margin: EdgeInsets.all(30), //espaçamento externo
      decoration: BoxDecoration(
        border: Border.all(width: 3, color: Colors.white)
      ),
      child: Image.asset(
        "images/mesa.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ));

}