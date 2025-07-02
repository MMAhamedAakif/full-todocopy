import 'package:flutter/material.dart';
import 'package:glow_container/glow_container.dart'
    show ContainerOptions, GlowContainer, GlowLocation;

class Notificationpage extends StatelessWidget {
  const Notificationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Notification Page",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
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
                      'New Notification to view ',
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
