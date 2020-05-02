import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String imageFilename;
  final String text;
  final String value;

  GridItem({this.imageFilename, this.text, this.value});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print('$value pressed'),
      child: Column(
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
      ),
    );
  }
}