import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:pretty_animated_text/pretty_animated_text.dart'
    show AnimationType, BlurText;
import 'package:todocopy/pages/NotificationPage.dart';

class Favoritepage extends StatelessWidget {
  const Favoritepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[50],
        title: Center(
          child: Text("Favorit ", style: TextStyle(color: Color(0xFF006876))),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 26.0),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: 2, end: 2),
              badgeContent: Text("3", style: TextStyle(fontSize: 8)),
              child: IconButton(
                focusColor: Colors.white,
                autofocus: true,
                hoverColor: Colors.white24,
                splashColor: Colors.white,
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

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://marketplace.canva.com/EAGMGLapir8/1/0/1131w/canva-pink-watercolor-background-document-UskfOyW0p2Y.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
            // ignore: deprecated_member_use
            child: Container(color: Colors.black.withOpacity(0)),
          ),

          ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Column(
                      children: [
                        Container(
                          height: 250,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          child: Image.network(
                            "https://png.pngtree.com/png-clipart/20230824/original/pngtree-wish-list-create-write-and-check-couple-vector-picture-image_8453947.png",
                            fit: BoxFit.contain,
                          ),
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(23),
                            color: Colors.pink[100],
                          ),

                          width: double.infinity,
                          height: 80,

                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Center(
                              child: BlurText(
                                text:
                                    'get new look for the page and guide me this way !!!',
                                duration: const Duration(seconds: 1),
                                type: AnimationType.word,
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              // child: Text("new  Favorite page ", style: TextStyle(fontSize: 25)),
                            ),
                          ),
                        ),
                        SizedBox(height: 20),

                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                            bottom: 10,
                          ),
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink[50],
                          ),
                          child: Text(
                            "favorite ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),

                        SizedBox(height: 10),

                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                            bottom: 10,
                          ),
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink[50],
                          ),
                          child: Text(
                            "favorite ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 10),

                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                            bottom: 10,
                          ),
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink[50],
                          ),
                          child: Text(
                            "favorite ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 10),

                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                            bottom: 10,
                          ),
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink[50],
                          ),
                          child: Text(
                            "favorite ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),

                        SizedBox(height: 10),

                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                            bottom: 10,
                          ),
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink[50],
                          ),
                          child: Text(
                            "favorite ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 10),

                        Container(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            top: 10,
                            bottom: 10,
                          ),
                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.pink[50],
                          ),
                          child: Text(
                            "favorite ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
