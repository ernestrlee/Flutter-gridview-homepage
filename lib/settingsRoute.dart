import 'package:flutter/material.dart';

class SettingsRoute extends StatelessWidget {
  final String appBarTitle;
  final List<String> settingsList = [
    'BackgroundColor',
    'AppBarColor',
  ];

  SettingsRoute({this.appBarTitle});

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
        itemCount: settingsList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Align(
                alignment: Alignment.centerLeft,
                  child: Text(settingsList[index]),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }
}
