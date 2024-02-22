import 'package:flutter/material.dart';
import 'package:todo_three/Settings_Package/Setting_Screen.dart';
import 'package:todo_three/ToDO_Package/todo_screen.dart';
import 'package:todo_three/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    String tilteOfScreen = currentIndex == 0
        ? AppLocalizations.of(context)!.todo_screen_title
        : AppLocalizations.of(context)!.setting_screen_title;
    ;
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
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                      AssetImage('assets/icons/Icon awesome-list.png')),
                  label: AppLocalizations.of(context)!.nav_btn_0),
              BottomNavigationBarItem(
                  icon: const ImageIcon(
                      AssetImage('assets/icons/Icon feather-settings.png')),
                  label: AppLocalizations.of(context)!.nav_btn_1),
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
