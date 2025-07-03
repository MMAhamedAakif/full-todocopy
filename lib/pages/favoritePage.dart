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
        backgroundColor: Colors.blueAccent,
        title: Center(
          child: Text("Favorit Page", style: TextStyle(color: Colors.white)),
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
                  "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(color: Colors.black.withOpacity(0)),
          ),

          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(22.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.white70,
                  ),

                  width: double.infinity,
                  height: 100,

                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: BlurText(
                        text:
                            'Lorem ipsum dolor sit amet get new look for the page and guide me this way !!!',
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
              ),
            ],
          ),
        ],
      ),

      // body: Padding(
      //   padding: const EdgeInsets.all(22.0),
      //   child: Center(
      //     child: BlurText(
      //       text:
      //           'Lorem ipsum dolor sit amet get new look for the page and guide me this way !!!',
      //       duration: const Duration(seconds: 1),
      //       type: AnimationType.word,
      //       textStyle: const TextStyle(
      //         fontSize: 25,
      //         fontWeight: FontWeight.bold,
      //       ),
      //     ),

      //     // child: Text("new  Favorite page ", style: TextStyle(fontSize: 25)),
      //   ),
      // ),
    );
  }
}
