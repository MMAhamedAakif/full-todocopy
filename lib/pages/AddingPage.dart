import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:todocopy/adding%20page%20containers/selectTask.dart';
import 'package:todocopy/pages/NotificationPage.dart';

class addingPage extends StatelessWidget {
  const addingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Text(
              "Add Project",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
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

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://files.123freevectors.com/wp-content/original/154027-abstract-blue-and-white-background-design.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            // ignore: deprecated_member_use
            child: Container(color: Colors.black.withOpacity(0)),
          ),
          Padding(padding: const EdgeInsets.all(16.0), child: Selecttask()),
        ],
      ),
      // body: Padding(padding: const EdgeInsets.all(16.0), child: Selecttask()),
    );
  }
}
