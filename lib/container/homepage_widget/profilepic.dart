import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:todocopy/pages/NotificationPage.dart';

class Profilepic extends StatelessWidget {
  const Profilepic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 28.0,
            backgroundImage: NetworkImage(
              "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
            ),
          ),

          SizedBox(width: 10.0),
          Text(
            "Hello! \n Livia Vaccaro",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Spacer(),

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
    );
  }
}
