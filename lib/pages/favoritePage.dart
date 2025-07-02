import 'package:flutter/material.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';
import 'package:badges/badges.dart' as badges;
import 'package:todocopy/pages/NotificationPage.dart';

class Favoritepage extends StatelessWidget {
  const Favoritepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favorit Page"),
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

      body: Padding(
        padding: const EdgeInsets.all(22.0),
        child: Center(
          child: BlurText(
            text:
                'Lorem ipsum dolor sit amet get new look for the page and guide me this way !!!',
            duration: const Duration(seconds: 1),
            type: AnimationType.word,
            textStyle: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          // child: Text("new  Favorite page ", style: TextStyle(fontSize: 25)),
        ),
      ),
    );
  }
}
