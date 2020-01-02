import 'package:flutter/material.dart'; //para android
//import 'package:flutter/cupertino.dart'; //para ios

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Text("Oi"),
        title: Text("ToDo List"),
        actions: <Widget>[
          Icon(Icons.plus_one),
        ],
      ),
      body: Container(
        child: Center(
          child: Text("Olá, Mundo!"),
        ),
      ),
    );
  }
}
