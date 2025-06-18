import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class inprogress extends StatelessWidget {
  const inprogress({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("new "),

        // Text(
        //   "In Progress ",
        //   style: TextStyle(
        //     fontWeight: FontWeight.bold,
        //     color: Colors.black,
        //     fontSize: 13.0,
        //   ),
        // ),
        LinearPercentIndicator(
          width: 140.0,
          lineHeight: 14.0,
          percent: 0.75,
          animation: true,
          animationDuration: 1000,
          backgroundColor: Colors.grey,
          progressColor: Colors.blue,
          center: Text("75.0%", style: TextStyle(fontSize: 12.0)),
          trailing: Icon(Icons.mood),
        ),
      ],
    );
  }
}
