import 'package:flutter/material.dart';
import 'package:gridviewhomepage/backgroundColorSettingRoute.dart';
import 'constants.dart';

class SettingsRoute extends StatelessWidget {
  final String appBarTitle;
  final List<String> settingsList = [
    'Background Color',
    'Font Color',
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
          return GestureDetector(
            onTap: () {
              showSetting(context, settingsList[index]);
            },
            child: Container(
              height: 50,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    settingsList[index],
                    style: TextStyle(
                      fontSize: kSettingsFontSize,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(),
      ),
    );
  }

  void showSetting(context, setting) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return BackgroundColorSetting();
      }),
    );
  }
}
