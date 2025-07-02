import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:todocopy/pages/NotificationPage.dart';

class addingPage extends StatelessWidget {
  const addingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Add Project",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
        ),
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
                tooltip: "New Message",
              ),
            ),
          ),
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(16.0), child: Container()),
    );
  }
}
