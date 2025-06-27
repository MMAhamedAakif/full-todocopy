import 'package:flutter/material.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';
import 'package:todocopy/pages/newHome.dart';

class Favoritepage extends StatelessWidget {
  const Favoritepage({super.key});

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

        title: Text("Favorit Page"),
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
