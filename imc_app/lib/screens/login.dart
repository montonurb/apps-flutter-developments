import 'package:flutter/material.dart';
import 'package:imc_app/screens/home.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Imc')
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/imc_logo.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RaisedButton(
                child: Text(
                  'Entrar',
                  style: TextStyle(fontSize: 16.0),
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
              },
            ),
            )
          ],
        ),
      ),
    );
  }
}