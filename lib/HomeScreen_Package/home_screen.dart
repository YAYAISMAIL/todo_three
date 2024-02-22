import 'package:flutter/material.dart';
import 'package:todo_three/theme.dart';

class HomeScreen extends StatelessWidget {
  static const String routesName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title oF HomeScreen Tap'),
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: MyTheme.canvesColorDarkMode),
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart_sharp), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ]),
      ),
    );
  }
}
