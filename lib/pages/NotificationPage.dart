import 'package:flutter/material.dart';
import 'package:glow_container/glow_container.dart'
    show ContainerOptions, GlowContainer, GlowLocation;
import 'package:animated_text_kit/animated_text_kit.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Expanded(
            child: GlowContainer(
              glowRadius: 3,
              gradientColors: [
                Colors.blue[800]!,
                Colors.purple[800]!,
                Colors.pink[800]!,
              ],
              rotationDuration: Duration(seconds: 2),
              glowLocation: GlowLocation.both,
              containerOptions: ContainerOptions(
                padding: EdgeInsets.all(18),
                // width: 500,
                // height: 300,
                borderRadius: 15,
                backgroundColor: Colors.white38,
                borderSide: BorderSide(width: 1.0, color: Colors.black),
              ),
              transitionDuration: Duration(milliseconds: 300),
              showAnimatedBorder: true,
              child: Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image.network(
                        "https://media.istockphoto.com/id/1173450044/vector/secretary-receptionist-office-worker-character-working-vector-flat-cartoon-graphic-design.jpg?s=612x612&w=0&k=20&c=lIQ0Y7S191js9iyDyUqHVJXkSVeX1G-tlmbDxOWgT18=",
                        fit: BoxFit.contain,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            const SizedBox(width: 20.0, height: 100.0),
                            const Text(
                              'Be',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 20.0, height: 100.0),
                            DefaultTextStyle(
                              style: const TextStyle(
                                fontSize: 20.0,
                                fontFamily: 'ethnocentric',
                              ),
                              child: AnimatedTextKit(
                                repeatForever: true,
                                pause: Duration(microseconds: 10000),
                                animatedTexts: [
                                  RotateAnimatedText(
                                    'AWESOME ',
                                    textStyle: TextStyle(color: Colors.pink),
                                  ),
                                  RotateAnimatedText(
                                    'OPTIMISTIC',
                                    textStyle: TextStyle(color: Colors.amber),
                                  ),
                                  RotateAnimatedText(
                                    'DIFFERENT',
                                    textStyle: TextStyle(color: Colors.blue),
                                  ),
                                ],
                                onTap: () {},
                              ),
                            ),
                          ],
                        ),
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
                            color: Colors.red[100],
                          ),
                          child: Text(
                            "Message 1 ",
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
                            color: Colors.red[100],
                          ),
                          child: Text(
                            "Message 2 ",
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
                            color: Colors.red[100],
                          ),
                          child: Text(
                            "Message 3 ",
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
                            color: Colors.red[100],
                          ),
                          child: Text(
                            "Message 4 ",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),

                        SizedBox(height: 10),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          // child: Text("calender page", style: TextStyle(fontSize: 23)),
        ),
      ),
    );
  }
}
