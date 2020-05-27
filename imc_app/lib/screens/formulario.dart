import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:imc_app/models/dados_imc.dart';
import 'package:imc_app/screens/menu_drawer.dart';
import 'package:imc_app/database/dao/imc.dart';

class FormularioIMC extends StatefulWidget {
  @override
  _FormularioIMCState createState() {
    return _FormularioIMCState();
  }
}

class _FormularioIMCState extends State<FormularioIMC> {
  final TextEditingController _controllerPeso = TextEditingController();
  final TextEditingController _controllerAltura = TextEditingController();
  final ImcDao _dao = ImcDao();

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
                  hintText: 'Peso (75.6)',
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
                  hintText: 'Altura (1.67)',
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
                  onPressed: () {
                    //_criaCampoImc(context);
                    final String peso = _controllerPeso.text;
                    final double pesoNum = double.tryParse(peso.replaceAll(',', '.'));
                    final String altura = _controllerAltura.text;
                    final double alturaNum = double.tryParse(altura.replaceAll(',', '.'));
                    final String dataAvaliacao = '${formatDate(DateTime.now(), [dd,'/', mm, '/', yyyy])}';
                    final DadosImc newImc = DadosImc(0, pesoNum, alturaNum, dataAvaliacao);
                    _dao.save(newImc).then((id) => Navigator.pop(context));
                  }),
            )
          ],
        ),
      )),
    );
  }
}

String convertStringfromDate() {
  DateTime data = DateTime.now();
  return data.toString();
}
//DateTime.now().toString()