import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
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
            GridItem(
              imageFileName: 'images/diamond.png',
              text: 'Diamond',
            ),
            GridItem(
              imageFileName: 'images/diamond.png',
              text: 'Diamond',
            ),
            GridItem(
              imageFileName: 'images/diamond.png',
              text: 'Diamond',
            ),
            GridItem(
              imageFileName: 'images/diamond.png',
              text: 'Diamond',
            ),
            GridItem(
              imageFileName: 'images/diamond.png',
              text: 'Diamond',
            ),
            GridItem(
              imageFileName: 'images/diamond.png',
              text: 'Diamond',
            ),
            GridItem(
              imageFileName: 'images/diamond.png',
              text: 'Diamond',
            ),
            GridItem(
              imageFileName: 'images/diamond.png',
              text: 'Diamond',
            ),
            GridItem(
              imageFileName: 'images/diamond.png',
              text: 'Diamond',
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imageFileName;
  final String text;

  GridItem({this.imageFileName, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 8,
          child: Image(
            image: AssetImage(imageFileName),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        Expanded(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
