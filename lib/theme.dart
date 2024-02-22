import 'package:flutter/material.dart';

class MyTheme {
  //Start:
  //Light Mode Color Info-----------------------------------------------------------
  static const Color primayColorLightMode = Color(0xff5D9CEC);
  static const Color appBarPrimayColorLightMode = Color(0xff5D9CEC);

  static const Color bodyPrimayColorLightMode = Color(0xffDFECDB);

  //Convaus LightMode --> BottomNavigationBar
  static const Color canvesColorLightMode = Color(0xffffffff);

  static const Color navBottomSelectedItemColorLightMode = Color(0xff5D9CEC);
  static const Color navBottomUnselectedItemColorLightMode = Color(0xffC8C9CB);

  //Task Container Color LightMode
  static const Color taskBackgroundColorLightMode = Color(0xffffffff);
  static const Color taskColorLightMode = Color(0xff5D9CEC);
  static const Color taskSeondColorLightMode = Color(0xff000000);
  //------------------------LightMode-----Ending--------------------------------------
  //End-------------------------------------------------------------------------------

  //Start:
  //DarkMode Colorization Data:-
  static const Color primayColorDarkMode = Color(0xff5D9CEC);
  static const Color appBarPrimayColorDarkMode = Color(0xFFF8E16C);

  static const Color bodyPrimayColorDarkMode = Color(0xff060E1E);

  //Convaus DarkMode ---> BottomNavigationBar
  static const Color canvesColorDarkMode = Color(0xff141922);

  static const Color navBottomSelectedItemColorDarkMode = Color(0xfff0c808);
  static const Color navBottomUnselectedItemColorDarkMode = Color(0xffC8C9CB);

  //Task Container Color DarkMode
  static const Color taskBackgroundColorDarkMode = Color(0xff141922);
  static const Color taskColorDarkMode = Color(0xfff0c808);
  static const Color taskSeondColorDarkMode = Color(0xffffffff);
  //------------------------DarkMode-----Ending---------------------------------------
  //End-------------------------------------------------------------------------------

  //Start:
  //LightMode ThemeData:--------------------------------------------------------------
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
  //End------------------------------------------------------------------------------

  //Start:
  //DarkMode ThemeData:--------------------------------------------------------------
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
  //End------------------------------------------------------------------------------
}
