import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TextColorSetting extends StatefulWidget {
  final Function setColor;

  TextColorSetting(this.setColor);

  @override
  _TextColorSettingState createState() => _TextColorSettingState();
}

class _TextColorSettingState extends State<TextColorSetting> {
  final String appBarTitle = 'Select text color';

  String _selectedColor;

  _TextColorSettingState();

  final List textColor = [
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
      _selectedColor = (prefs.getString('textColor') ?? 'FFFFFFFF');
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
        itemCount: textColor.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(textColor[index]['name']),
            leading: Radio(
              value: textColor[index]['value'],
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
