import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de Dados"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(32),
            child: TextField(
              keyboardType: TextInputType.number,//text, number, emailAddres e datetime
              decoration: InputDecoration(
                labelText: "Informe um valor"
              ),
              //enabled: true,
              /* maxLength: 2,
              maxLengthEnforced: false, */
              /* style: TextStyle(
                fontSize: 25,
                color: Colors.green
              ), */
              //obscureText: true, //password
              /* onChanged: (String texto){ //executa toda vez que muda o valor
                print("Valor informado: $texto");
              }, */
              onSubmitted: (String texto){
                print("Valor informado: " + texto);
              },
              controller: _textEditingController,
            ),
          ),
          RaisedButton(
            child: Text("Salvar"),
            color: Colors.lightGreen,
            onPressed: (){
              print("Valor informado: " + _textEditingController.text);
            },
          )
        ],
      ),
    );
  }
}