import 'package:fixhome_ready/src/pages/home_page.dart';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FixHome',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

_setupMode() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  bool mode = prefs.getBool("mode") ?? true;
  return mode;
}
