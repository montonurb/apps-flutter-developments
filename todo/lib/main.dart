import 'package:flutter/material.dart'; //para android -->   //import 'package:flutter/cupertino.dart'; //para ios
import 'models/item.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  var items = new List<Item>();

  HomePage() {
    items = [];
    items.add(Item(title: "Caderno", done: false));
    items.add(Item(title: "Caneta", done: true));
    items.add(Item(title: "Agenda", done: false));
  }
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var newTaskCtrl = TextEditingController();

  void add() {
    if (newTaskCtrl.text.isEmpty) return;
    setState(() {
      widget.items.add(
        Item(
          title: newTaskCtrl.text,
          done: false,
        ),
      );
      newTaskCtrl.text = "";
    });
  }

  void remove(int index) {
    setState(() {
      widget.items.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          controller: newTaskCtrl,
          keyboardType: TextInputType.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
          ),
          decoration: InputDecoration(
            labelText: "Nova tarefa",
            labelStyle: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: widget.items.length,
        itemBuilder: (BuildContext ctxt, int index) {
          final item = widget.items[index];
          return Dismissible(
            child: CheckboxListTile(
              title: Text(item.title),
              value: item.done,
              onChanged: (value) {
                setState(() {
                  item.done = value;
                });
              },
            ),
            key: Key(item.title),
            background: Container(
              color: Colors.red.withOpacity(0.2),
            ),
            onDismissed: (direction) {
              remove(index);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: add,
        child: Icon(Icons.add),
        backgroundColor: Colors.purple,
      ),
    );
  }
}
