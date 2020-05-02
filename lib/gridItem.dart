import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String imageFilename;
  final String text;

  GridItem({this.imageFilename, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Image(
            image: AssetImage(imageFilename),
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