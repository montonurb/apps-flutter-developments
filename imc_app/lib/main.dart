import 'package:flutter/material.dart';
import 'package:imc_app/screens/login.dart';


void main() {
  runApp(ImcApp());
}

class ImcApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal[400],
        accentColor: Colors.blueAccent,
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.teal[400],
          textTheme: ButtonTextTheme.primary
        )
      ),
      home: Login(),
    );
  }
}