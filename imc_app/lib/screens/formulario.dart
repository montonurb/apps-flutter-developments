import 'package:flutter/material.dart';
import 'package:imc_app/screens/menu_drawer.dart';

class FormularioIMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(title: Text('Formulário de Avaliação')),
      body: Container(
          child: Form(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: <Widget>[
            Text(
              'Calcular IMC',
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 24,
              ),
            ),
            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.number,
              //autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Peso',
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            SizedBox(height: 10),
            TextFormField(
              keyboardType: TextInputType.number,
              //autofocus: true,
              decoration: InputDecoration(
                  hintText: 'Altura',
                  contentPadding: EdgeInsets.all(20),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: RaisedButton(
                child: Text('Calcular', style: TextStyle(fontSize: 20),),
                onPressed: () {}),
            )
          ],
        ),
      )),
    );
  }
}

class OutLineInputBorder {}
