import 'package:flutter/material.dart';

class MyTheme {
  static const Color primayColorLightMode = Color(0xff5D9CEC);
  static const Color appBarPrimayColorLightMode = Color(0xff5D9CEC);
  static const Color primayColorDarkMode = Color(0xff5D9CEC);
  static const Color appBarPrimayColorDarkMode = Color(0xFFF8E16C);

  static const Color bodyPrimayColorLightMode = Color(0xffDFECDB);
  static const Color bodyPrimayColorDarkMode = Color(0xff060E1E);

  static const Color gray = Color(0xffC8C9CB);
  static const Color black = Color(0xff000000);
  static const Color white = Color(0xffffffff);

  static const Color canvesColorLightMode = Color(0xffffffff);

  static const Color navBottomSelectedItemColorLightMode = Color(0xff5D9CEC);
  static const Color navBottomUnselectedItemColorLightMode = Color(0xffC8C9CB);

  static const Color canvesColorDarkMode = Color(0xff141922);

  static const Color navBottomSelectedItemColorDarkMode = Color(0xfff0c808);
  static const Color navBottomUnselectedItemColorDarkMode = Color(0xffC8C9CB);

  //Start:
  //LightMode ThemeData:-------------------------------------------------------------------------
  static ThemeData myThemeLightMod = ThemeData(
      primaryColor: bodyPrimayColorLightMode,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: appBarPrimayColorLightMode,
          titleTextStyle: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white)),

      //NavigationBar Style
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: navBottomSelectedItemColorLightMode,
        unselectedItemColor: navBottomUnselectedItemColorLightMode,
      ));
  //End---------------------------------------------------------------------------------------------

  //Start:
  //DarkMode ThemeData:---------------------------------------------------------------------------
  static ThemeData myThemeDarkMod = ThemeData(
      primaryColor: bodyPrimayColorDarkMode,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: const AppBarTheme(
          backgroundColor: appBarPrimayColorDarkMode,
          titleTextStyle: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black)),

      //NavigationBar Style
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: navBottomSelectedItemColorDarkMode,
        unselectedItemColor: navBottomUnselectedItemColorDarkMode,
      ));
  //End---------------------------------------------------------------------------------------------
}
