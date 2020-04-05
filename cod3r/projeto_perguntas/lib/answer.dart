import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final String texto;
  final void Function() onSelected; 

  Answer(this.texto, this.onSelected);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        child: Text(texto),
        onPressed: onSelected,
      ),
    );
  }
}