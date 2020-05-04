import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BackgroundColorSetting extends StatefulWidget {
  @override
  _BackgroundColorSettingState createState() => _BackgroundColorSettingState();
}

class _BackgroundColorSettingState extends State<BackgroundColorSetting> {
  final String appBarTitle = 'Select background color';
  String _selectedColor = "0xFF000000";

  final List backgroundColor = [
    {
      'name': 'Black',
      'value': '0XFF000000',
    },
    {
      'name': 'Blue',
      'value': '0xFFB2EBF2',
    },
    {
      'name': 'Gray',
      'value': '0xFFBDBDBD',
    },
    {
      'name': 'Red',
      'value': '0xFFFF8A80',
    },
    {
      'name': 'White',
      'value': '0xFFFFFFFF',
    },
  ];

  @override
  void initState() {
    super.initState();
    _loadColor();
  }

  void _loadColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedColor = (prefs.getString('backgroundColor') ?? '0xFF000000');
    });
  }

  void _setColor(color) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedColor = color;
      prefs.setString('backgroundColor', color);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
        ),
      ),
      body: ListView.separated(
        padding: EdgeInsets.all(8),
        itemCount: backgroundColor.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(backgroundColor[index]['name']),
            leading: Radio(
              value: backgroundColor[index]['value'],
              groupValue: _selectedColor,
              onChanged: (value) {
                _setColor(value);
              },
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }
}
