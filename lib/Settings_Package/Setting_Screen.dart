import 'dart:html';

import 'package:flutter/material.dart';
import 'package:todo_three/Settings_Package/set_dropdown.dart';
import 'package:todo_three/theme.dart';

class SettingScreen extends StatelessWidget {
  static const String tilteOfScreen = 'Settings';

  SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyTheme.bodyPrimayColorLightMode,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("Language"),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          SetDropDown(dropDownInit: 'English'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          const Text("App-Mode"),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          SetDropDown(dropDownInit: 'Light Mode',),
        ],
      ),
    );
  }
}
