import 'package:fixhome_ready/src/theme/constant_values.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  bool _switchValue = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Ajustes",
            style: headerStyle,
          ),
          centerTitle: true,
        ),
        body: ListTile(
          title: Text(
            "Modo Oscuro",
            style: titleStyle,
          ),
          trailing: Switch(
            value: _switchValue,
            onChanged: (bool value) async {
              final SharedPreferences prefs =
                  await SharedPreferences.getInstance();
              prefs.setBool("mode", value);
              _switchValue = value;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
