import 'package:flutter/material.dart';
import 'package:todo_three/HomeScreen_Package/home_screen.dart';
import 'package:todo_three/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App Titel On Tap',
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routesName,
      routes: {
        HomeScreen.routesName: (context) => HomeScreen(),
      },
      theme: MyTheme.myThemeLightMod,
    );
  }
}
