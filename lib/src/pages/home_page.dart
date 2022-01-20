import 'package:fixhome_ready/src/utils/main_menu.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: homeWidgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          _selectedIndex = index;
          setState(() {});
        },
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: menuOptions
            .map((e) =>
                BottomNavigationBarItem(icon: Icon(e.icon), label: e.title))
            .toList(),
      ),
    );
  }
}
