import 'package:flutter/material.dart';
import 'package:todocopy/pages/calendarPage.dart';
import 'package:todocopy/pages/favoritePage.dart';
import 'package:todocopy/pages/setting.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:todocopy/pages/newHome.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key, required void Function() onThemechanged});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  final iconList = <IconData>[
    Icons.home,
    Icons.calendar_month,
    Icons.favorite_sharp,
    Icons.settings,
  ];

  //*list of pages for each tab
  static final List<Widget> _pages = <Widget>[
    // Homepage(),
    Newhome(),
    calendarPage(),
    Favoritepage(),
    SettingPage(),
  ]; //*

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        isExtended: true,

        focusColor: Color.fromARGB(255, 30, 11, 245),
        autofocus: true,
        splashColor: Colors.blue,
        onPressed: () {
          Navigator.pushNamed(context, '/addingPage');
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => addingPage()),
          // );
        },
        backgroundColor: const Color.fromARGB(255, 27, 9, 166),
        child: Icon(Icons.add, color: Colors.white),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,

      bottomNavigationBar: AnimatedBottomNavigationBar(
        splashRadius: 34,
        height: 60,
        backgroundColor: Color.fromARGB(255, 8, 211, 234),
        // borderColor: Colors.blueGrey,
        blurEffect: true,
        splashColor: Colors.deepPurple,
        splashSpeedInMilliseconds: 400,
        elevation: 0,
        activeIndex: _selectedIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 12,
        rightCornerRadius: 12,

        // type: BottomNavigationBarType.fixed,
        onTap:
            (index) =>
                _onItemTapped(index), // ✅ Now calls the function properly
        activeColor: Color.fromARGB(255, 30, 11, 245),
        inactiveColor: Colors.pink[100],

        icons: iconList,
      ),
    );
  }
}
