import 'package:flutter/material.dart';
import 'package:imc_app/screens/menu_drawer.dart';

class ImcList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MenuDrawer(),
        appBar: AppBar(title: Text('Lista')),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Card(
              elevation: 10,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '1ª AVALIAÇÃO',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              '12/01/2020',
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ]),
                    Row(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Peso: '),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Altura: '),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Imc: '),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 10,
              margin: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '2ª AVALIAÇÃO',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Text(
                              '12/01/2020',
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ]),
                    Row(
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Peso: '),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Altura: '),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Imc: '),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
