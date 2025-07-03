import 'package:flutter/material.dart';
import 'package:todocopy/container/homepage_widget/bottomNavigationbar.dart';
import 'package:todocopy/pages/AddingPage.dart';
import 'package:todocopy/pages/calendarPage.dart';
import 'package:todocopy/pages/favoritePage.dart';
import 'package:todocopy/pages/newHome.dart';
import 'package:todocopy/pages/setting.dart';
// ignore: depend_on_referenced_packages
import 'package:flex_color_scheme/flex_color_scheme.dart';

void main() {
  runApp(to_do_app());
}

// ignore: camel_case_types
class to_do_app extends StatefulWidget {
  const to_do_app({super.key});

  @override
  State<to_do_app> createState() => _to_do_appState();
}

class _to_do_appState extends State<to_do_app> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      darkTheme: ThemeData.dark(),
      theme: ThemeData(primaryColor: Colors.blue),

      home: Homepage(onThemechanged: toggleTheme),
      // initialRoute: '/',
      routes: {
        '/newHomePage': (context) => const Newhome(),
        '/favoritePage': (context) => const Favoritepage(),
        '/calenderPage': (context) => const calendarPage(),
        '/settingPage': (context) => const SettingPage(),
        '/addingPage': (context) => const addingPage(),
      },
    );
  }
}
