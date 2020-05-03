import 'package:flutter/material.dart';
import 'constants.dart';
import 'homeScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: kAppBarColor,
      ),
      home: HomeScreen(),
    );
  }
}



