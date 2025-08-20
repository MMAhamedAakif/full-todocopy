import 'package:flutter/material.dart';

class Startingpage extends StatelessWidget {
  const Startingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network(
              "https://img.lovepik.com/element/45003/5703.png_860.png",
              fit: BoxFit.contain,
            ),
            Text(
              "Task Management & \n To Do List ",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text(
              "This product tool is designed to help you better manage your task project-wise conveniently!",
            ),

            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(context, MaterialPageRoute(builder: Favoritepage()));
            //   },
            //   child: Text("Let's start "),
            // ),
          ],
        ),
      ),
    );
  }
}
