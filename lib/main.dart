import 'package:flutter/material.dart';
import 'constants.dart';
import 'gridController.dart';

GridController gridController = GridController();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kAppBarColor,

      ),
      home: Scaffold(
        backgroundColor: kBackgroundColor,
        appBar: AppBar(
          backgroundColor: kAppBarColor,
          title: Text(
            'GridView App',
            style: TextStyle(
              color: kAppBarTextColor,
            ),
          ),
        ),
        body: gridController.createGridView(),
      ),
    );
  }
}
