import 'package:flutter/material.dart';
import 'package:imc_app/screens/menu_drawer.dart';

class ConfiguracoesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuDrawer(),
      appBar: AppBar(title: Text('Configurações')),
    );
  }
}