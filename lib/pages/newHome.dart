import 'package:flutter/material.dart';
import 'package:todocopy/container/homepage_widget/Inprogressreusecode/InProgressSection%20.dart';
import 'package:todocopy/container/homepage_widget/profilepic.dart';
import 'package:todocopy/container/homepage_widget/container_task.dart';
import 'package:todocopy/container/homepage_widget/taskgroups/Addvaluetask.dart';

class Newhome extends StatefulWidget {
  const Newhome({super.key});

  @override
  State<Newhome> createState() => _NewhomeState();
}

class _NewhomeState extends State<Newhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),

          child: ListView(
            children: [
              Column(
                children: [
                  Profilepic(),
                  SizedBox(height: 20.0),
                  view_task(),
                  SizedBox(height: 15.0),
                  InProgressSection(),
                  SizedBox(height: 15.0),
                  Task_groups(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
