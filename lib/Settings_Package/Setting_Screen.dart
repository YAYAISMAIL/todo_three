import 'package:flutter/material.dart';
import 'package:todo_three/Settings_Package/set_dropdown.dart';
import 'package:todo_three/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String tilteOfScreen = AppLocalizations.of(context)!.setting_screen_title;

    return Container(
      color: MyTheme.bodyPrimayColorLightMode,
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.05,
        vertical: MediaQuery.of(context).size.height * 0.02,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          SetDropDown(dropDownInit: 'English'),
          SizedBox(height: MediaQuery.of(context).size.height * 0.05),
          Text(AppLocalizations.of(context)!.app_mode),
          SizedBox(height: MediaQuery.of(context).size.height * 0.02),
          SetDropDown(dropDownInit: 'Light Mode'),
        ],
      ),
    );
  }
}
