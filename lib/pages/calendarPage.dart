import 'package:flutter/material.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';
import 'package:glow_container/glow_container.dart';
import 'package:todocopy/container/homepage_widget/bottomNavigationbar.dart';
import 'package:todocopy/pages/newHome.dart';

class calendarPage extends StatelessWidget {
  const calendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Newhome()),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text("Adding page "),
      ),

      body: Center(
        child: GlowContainer(
          glowRadius: 30,
          gradientColors: [
            Colors.blue[800]!,
            Colors.purple[800]!,
            Colors.pink[800]!,
          ],
          rotationDuration: Duration(seconds: 2),
          glowLocation: GlowLocation.both,
          containerOptions: ContainerOptions(
            padding: EdgeInsets.all(18),
            width: 300,
            height: 100,
            borderRadius: 15,
            backgroundColor: Colors.white,
            borderSide: BorderSide(width: 1.0, color: Colors.white),
          ),
          transitionDuration: Duration(milliseconds: 300),
          showAnimatedBorder: true,
          child: Center(
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      'Start New Things ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Help of pub.get',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

        // child: Text("calender page", style: TextStyle(fontSize: 23)),
      ),
    );
  }
}
