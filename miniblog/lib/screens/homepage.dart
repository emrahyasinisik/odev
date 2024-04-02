import 'package:flutter/material.dart';
import 'package:miniblog/themes/dark_theme.dart';
import 'package:miniblog/themes/light_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ThemeMode themeMode = ThemeMode.light;

  @override
  void initState() {
    super.initState();
    _readThemeData();
  }

  _readThemeData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool? isDark = preferences.getBool("DARKTHEME");
    if (isDark != null && isDark) {
      setState(() {
        themeMode = ThemeMode.dark;
      });
    }
  }

  _changeTheme(bool value) {
    setState(() {
      themeMode = value ? ThemeMode.dark : ThemeMode.light;
      _writeThemeDate(value);
    });
  }

  _writeThemeDate(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool("DARKTHEME", value);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darktheme,
      themeMode: themeMode,
      home: Scaffold(
          body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Switch(
                  value: themeMode == ThemeMode.dark,
                  onChanged: (value) {
                    _changeTheme(value);
                  })),
        ],
      )),
    );
  }
}
