import 'package:flutter/material.dart';

class BackgroundColorSetting extends StatefulWidget {
  @override
  _BackgroundColorSettingState createState() => _BackgroundColorSettingState();
}

class _BackgroundColorSettingState extends State<BackgroundColorSetting> {
  final String appBarTitle = 'Select background color';
  String _selectedColor = 'black';
  final List backgroundColor = [
    {
      'name': 'black',
      'value': 'black',
    },
    {
      'name': 'Blue',
      'value': 'blue',
    },
    {
      'name': 'Gray',
      'value': 'gray',
    },
    {
      'name': 'Red',
      'value': 'red',
    },
    {
      'name': 'White',
      'value': 'white',
    },
  ];

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
                setState(() {
                  _selectedColor = backgroundColor[index]['value'];
                });
              },
            ),
          );

        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }
}
