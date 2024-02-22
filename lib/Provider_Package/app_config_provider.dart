import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  String appLanguage = 'ar';

  void changeLanuguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage == newLanguage;
    notifyListeners();
  }
}
