import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    title: "Frases do dia",
    home: Row(children: <Widget>[
      Text("texto 1: "),
      Text("texto 2: "),
      Text("t3")
    ],),
    //home: Container(color: Colors.white,),
  ));

}