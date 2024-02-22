import 'package:flutter/material.dart';
import 'package:todo_three/Settings_Package/Setting_Screen.dart';
import 'package:todo_three/ToDO_Package/todo_screen.dart';
import 'package:todo_three/theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routesName = 'HomeScreen';

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title oF HomeScreen Tap'),
      ),
      body: MyTabs[currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: MyTheme.canvesColorDarkMode),
        child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              currentIndex = value;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart_sharp), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
            ]),
      ),
    );
  }

  List<Widget> MyTabs = [
    ToDoScreen(),
    SettingScreen(),
  ];
}
