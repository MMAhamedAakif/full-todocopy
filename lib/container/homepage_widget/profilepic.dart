import 'package:flutter/material.dart';

class Profilepic extends StatelessWidget {
  const Profilepic({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 28.0,
            backgroundImage: NetworkImage(
              "https://plus.unsplash.com/premium_photo-1664474619075-644dd191935f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8aW1hZ2V8ZW58MHx8MHx8fDA%3D",
            ),
          ),

          SizedBox(width: 10.0),
          Text(
            "Hello! \n Livia Vaccaro",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
            color: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
