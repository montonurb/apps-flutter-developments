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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text("T1"),
          Text("T2"),
          Text("T3")
        ],
      ),
    ),
  ));

}