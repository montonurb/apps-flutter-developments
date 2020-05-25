import 'package:flutter/material.dart';
import 'package:imc_app/models/dados_imc.dart';
//import 'package:imc_app/screens/imc_list.dart';
import 'package:imc_app/screens/menu_drawer.dart';

class FormularioIMC extends StatefulWidget {
  @override
  _FormularioIMCState createState() {
    return _FormularioIMCState();
  }
}

class _FormularioIMCState extends State<FormularioIMC> {
  final TextEditingController _controllerPeso = TextEditingController();
  final TextEditingController _controllerAltura = TextEditingController();
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
              controller: _controllerPeso,
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
              controller: _controllerAltura,
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
                child: Text(
                  'Calcular',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () => _criaCampoImc(context),
              ),
            )
          ],
        ),
      )),
    );
  }

  void _criaCampoImc(BuildContext context) {
    final double peso = double.tryParse(_controllerPeso.text);
    final int altura = int.tryParse(_controllerAltura.text);
    if(peso != null && altura != null) {
      DadosImc(peso, altura);
      final campoCriado = DadosImc(peso, altura);
        return Navigator.pop(context, campoCriado);
    }
  }
}
