import 'package:flutter/material.dart';


class appGasol extends StatefulWidget {
  @override
  _appGasolState createState() => _appGasolState();
}

class _appGasolState extends State<appGasol> {
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Álcool ou Gasolina"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch, // Preenche toda a área
            children: <Widget>[

              //Imagem - Logo do aplicativo
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset("imagens/logo.png"),
              ),
              
              //Texto
              Padding(
                padding: EdgeInsets.only(bottom: 15),
                child: Text(
                    "Saiba qual a melhor opção para abastecimento do seu carro.",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),

              //Campo texto - Valor do Alcool
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço Alcool, ex: 1.59"
                ),
                style: TextStyle(
                  fontSize: 22,
                ),
                controller: _controllerAlcool,
              ),

              //Campo texto - Valor da Gasolina
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Preço Gasolina, ex: 3.15"
                ),
                style: TextStyle(
                  fontSize: 22,
                ),
                controller: _controllerGasolina,
              ),

              //Botão
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: RaisedButton(
                  color: Colors.blue,
                  textColor: Colors.white,
                  padding: EdgeInsets.all(15),
                  child: Text(
                      "Calcular",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  onPressed: (){

                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                    "Resultado",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}