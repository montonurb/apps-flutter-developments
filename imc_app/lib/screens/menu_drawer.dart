import 'package:flutter/material.dart';
import 'package:imc_app/screens/formulario.dart';
import 'package:imc_app/screens/home.dart';
import 'package:imc_app/screens/imc_list.dart';
import 'package:imc_app/screens/login.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Colors.teal[800],
            Colors.teal[500],
          ])),
          child: Text(
            'Menu de Navegação',
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomePage();
            }));
          },
          leading: Icon(Icons.home),
          title: Text('Tela Inicial'),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return FormularioIMC();
            }));
          },
          leading: Icon(Icons.star_border),
          title: Text('Iniciar Avaliação'),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ImcList();
            }));
          },
          leading: Icon(Icons.format_list_bulleted),
          title: Text('Lista de Avaliações'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Configurações'),
        ),
        ListTile(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Login();
            }));
          },
          leading: Icon(Icons.exit_to_app),
          title: Text('Sair'),
        )
      ],
    ));
  }
}
