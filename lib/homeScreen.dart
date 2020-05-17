import 'package:flutter/material.dart';
import 'constants.dart';
import 'gridController.dart';
import 'settingsRoute.dart';
import 'package:shared_preferences/shared_preferences.dart';

GridController gridController = GridController();

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String bgColor = 'FF000000';
  String textColor = 'FFFFFFFF';

  @override
  initState() {
    super.initState();
    _loadColor();
  }

  void _loadColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      bgColor = (prefs.getString('backgroundColor') ?? 'FF000000');
    });
  }

  void setBackgroundColor(color) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      bgColor = color;
      prefs.setString('backgroundColor', color);
    });
  }

  void setTextColor(color) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      textColor = color;
      prefs.setString('textColor', color);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(int.parse(bgColor, radix: 16)),
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
              backgroundColorCallback: setBackgroundColor,
              textColorCallback: setTextColor,
            );
          }
      ),
    );
  }
}
