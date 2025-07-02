import 'package:flutter/material.dart';
import 'package:todocopy/container/homepage_widget/bottomNavigationbar.dart';
import 'package:todocopy/pages/AddingPage.dart';
import 'package:todocopy/pages/calendarPage.dart';
import 'package:todocopy/pages/favoritePage.dart';
import 'package:todocopy/pages/newHome.dart';
import 'package:todocopy/pages/setting.dart';

void main() {
  runApp(to_do_app());
}

// ignore: camel_case_types
class to_do_app extends StatelessWidget {
  const to_do_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
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
