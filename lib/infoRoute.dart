import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InfoRoute extends StatelessWidget {
  final String appBarTitle;
  final String text;

  InfoRoute({this.appBarTitle, this.text});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle
        ),
      ),
      body: Center(
        child: Text(
          text
        ),
      ),
    );
  }
}