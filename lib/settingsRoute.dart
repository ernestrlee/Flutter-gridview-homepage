import 'package:flutter/material.dart';

class SettingsRoute extends StatelessWidget {
  final String appBarTitle;

  SettingsRoute({this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            appBarTitle,
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Text(
              'text'
            ),
            Text(
              'text2'
            ),
          ],
        ),
      ),
    );
  }
}
