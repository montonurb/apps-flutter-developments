import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Inicial'),
      ),
      body: Flexible(
        child: GridView.count(
          childAspectRatio: 1.0,
          crossAxisCount: 2,
          children: <Widget>[
            
          ],
        )
      ),
    );
  }
}
