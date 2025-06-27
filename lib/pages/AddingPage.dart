import 'package:flutter/material.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';

class addingPage extends StatelessWidget {
  const addingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Adding page ")),
      body: Center(
        child: BlurText(
          text: 'Lorem ipsum dolor sit amet ...',
          duration: const Duration(seconds: 1),
          
          type: AnimationType.word,
          textStyle: const TextStyle(fontSize: 18),
        ),
        

        // Text("Adding task page  new start begin", style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
