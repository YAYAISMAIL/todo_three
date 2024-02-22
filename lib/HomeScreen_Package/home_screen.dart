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
  static String tilteOfScreen = 'To Do List';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tilteOfScreen),
        toolbarHeight: MediaQuery.of(context).size.height * 0.25,
      ),
      body: MyTabs[currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: MyTheme.canvesColorLightMode),
        child: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (value) {
              currentIndex = value;
              switch (value) {
                case 0:
                  tilteOfScreen = ToDoScreen.tilteOfScreen;
                  break;
                case 1:
                  tilteOfScreen = SettingScreen.tilteOfScreen;
                  break;
                default:
                  tilteOfScreen = ToDoScreen.tilteOfScreen;
                  break;
              }
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/icons/Icon awesome-list.png')),
                  label: 'TODO'),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                      AssetImage('assets/icons/Icon feather-settings.png')),
                  label: 'Settings'),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add, size: 35, color: MyTheme.white)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  List<Widget> MyTabs = [
    ToDoScreen(),
    SettingScreen(),
  ];
}
