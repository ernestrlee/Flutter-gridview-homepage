import 'package:flutter/material.dart';
import 'infoRoute.dart';

class GridItem extends StatelessWidget {
  final String imageFilename;
  final String text;
  final String value;
  String textColor = 'FFFFFF';

  GridItem({this.imageFilename, this.text, this.value, this.textColor});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => InfoRoute(
              appBarTitle: text,
              text: text,
            ),
          ),
        );
      },
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
                color: Color(int.parse(textColor, radix: 16)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
