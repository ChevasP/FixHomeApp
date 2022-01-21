import 'package:fixhome_ready/src/pages/home_page.dart';
import 'package:fixhome_ready/src/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _setupMode(),
        builder: (context, snapshot) {
          return SizedBox.square(
              dimension: 50.0, child: CircularProgressIndicator());
        });
  }
}

Future<bool> _setupMode() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  bool mode = prefs.getBool("mode") ?? true;
  return mode;
}
