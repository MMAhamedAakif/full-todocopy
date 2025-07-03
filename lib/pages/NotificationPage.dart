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
                                onTap: () {
                                  print("Tap Event");
                                },
                              ),
                            ),
                          ],
                        ),

                        SizedBox(
                          width: 400.0,
                          child: TextLiquidFill(
                            text: 'MESSAGE',
                            waveColor: Colors.lightBlue,
                            boxBackgroundColor: Colors.black,
                            textStyle: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'ethnocentric',
                            ),
                            boxHeight: 87.0,
                          ),
                        ),
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
