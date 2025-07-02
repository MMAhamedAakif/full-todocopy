import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:todocopy/pages/NotificationPage.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting page "),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 26.0),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: 2, end: 2),
              badgeContent: Text("3", style: TextStyle(fontSize: 8)),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Notificationpage()),
                  );
                },
                icon: Icon(Icons.notifications, color: Colors.deepPurple),
                tooltip: "new messages",
              ),
            ),
          ),
        ],
      ),

      body: Center(
        child: Text("new  Setting  page ", style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
