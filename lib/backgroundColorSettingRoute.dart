import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BackgroundColorSetting extends StatefulWidget {
  Function setColor;
  BackgroundColorSetting(this.setColor);

  @override
  _BackgroundColorSettingState createState() => _BackgroundColorSettingState(setColor);
}

class _BackgroundColorSettingState extends State<BackgroundColorSetting> {
  final String appBarTitle = 'Select background color';
  Function setColor;
  String _selectedColor;

  _BackgroundColorSettingState(this.setColor);

  final List backgroundColor = [
    {
      'name': 'Black',
      'value': 'FF000000',
    },
    {
      'name': 'Blue',
      'value': 'FFB2EBF2',
    },
    {
      'name': 'Gray',
      'value': 'FFBDBDBD',
    },
    {
      'name': 'Red',
      'value': 'FFFF8A80',
    },
    {
      'name': 'White',
      'value': 'FFFFFFFF',
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
      _selectedColor = (prefs.getString('backgroundColor') ?? 'FF000000');

    });
  }

  void _setColor(color) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _selectedColor = color;
      //prefs.setString('backgroundColor', color);
      setColor(color);
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
