import 'package:flutter/material.dart';
import 'package:todocopy/pages/newHome.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

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

        title: Text("Go To Homepage"),
      ),

      body: Center(
        child: Text("new  Setting  page ", style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
