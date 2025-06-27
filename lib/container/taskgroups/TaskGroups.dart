import 'package:flutter/material.dart';
import 'package:todocopy/container/taskgroups/taskgroupdata.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Taskgroups extends StatelessWidget {
  final Taskgroupdata data;

  const Taskgroups({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        gradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 225, 13, 158).withOpacity(0.2),
            const Color.fromARGB(255, 30, 11, 245).withOpacity(0.2),
            const Color.fromARGB(255, 8, 211, 234).withOpacity(0.2),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundColor: data.backgroundColor,
            child: Icon(data.icon, color: data.iconColor),
          ),
          SizedBox(width: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                data.title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(
                "${data.taskCount} Task",
                style: TextStyle(fontSize: 12, color: Colors.black45),
              ),
            ],
          ),
          Spacer(),

          CircularPercentIndicator(
            radius: 25,
            animation: true,
            animationDuration: 1500,
            lineWidth: 5.0,
            percent: data.progress,
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: data.backgroundColor,
            progressColor: data.iconColor,
            center: Text(
              "${data.progress * 100.toInt()}%",
              style: TextStyle(color: data.iconColor, fontSize: 15.0),
            ),
          ),
        ],
      ),
    );
  }
}
