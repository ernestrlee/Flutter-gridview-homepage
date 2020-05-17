import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BackgroundColorSetting extends StatefulWidget {
  final Function setColor;
  BackgroundColorSetting(this.setColor);

  @override
  _BackgroundColorSettingState createState() => _BackgroundColorSettingState();
}

class _BackgroundColorSettingState extends State<BackgroundColorSetting> {
  final String appBarTitle = 'Select background color';

  String _selectedColor;

  _BackgroundColorSettingState();

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
    setState(() {
      _selectedColor = color;
      widget.setColor(color);
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
