import 'package:flutter/material.dart';
import 'constants.dart';
import 'gridController.dart';
import 'settingsRoute.dart';

GridController gridController = GridController();

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Settings',
              onPressed: () {
                _showSettings(context);
              }
          ),
        ],
        title: Text(
          'GridView App',
          style: TextStyle(
            color: kAppBarTextColor,
          ),
        ),
      ),
      body: gridController.createGridView(),
    );
  }

  void _showSettings(context) {
    Navigator.push(context,
      MaterialPageRoute(
          builder: (BuildContext context) {
            return SettingsRoute(
              appBarTitle: 'Settings',
            );
          }
      ),
    );
  }
}