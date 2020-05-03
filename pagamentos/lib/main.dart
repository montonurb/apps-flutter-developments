import 'package:flutter/material.dart';
import 'package:pagamentos/lista.dart/lista.dart';

void main() {
  runApp(Pagamentos());
}

class Pagamentos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        )
      ),
        home: ListaPagamentos(),
      );
  }
}

