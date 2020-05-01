import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'GridView App',
          ),
        ),
        body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            GridItem(),
            GridItem(),
            GridItem(),
            GridItem(),
            GridItem(),
            GridItem(),
            GridItem(),
            GridItem(),
            GridItem(),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: AssetImage('images/diamond.png'),
      ),
    );
  }
}
