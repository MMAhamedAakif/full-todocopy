import 'package:flutter/material.dart';
import 'package:todocopy/container/homepage_widget/taskgroups/TaskGroups.dart';
import 'package:todocopy/container/homepage_widget/taskgroups/taskgroupdata.dart';

class Task_groups extends StatelessWidget {
  const Task_groups({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Taskgroupdata> taskGroups = [
      Taskgroupdata(
        title: "Office Project",
        taskCount: 25,
        progress: 0.75,
        icon: Icons.shopping_bag_rounded,
        iconColor: Colors.blue[800]!,
        backgroundColor: Colors.blue[50]!,
      ),
      Taskgroupdata(
        title: "Personal Task",
        taskCount: 15,
        progress: 0.75,
        icon: Icons.person_pin,
        iconColor: Colors.pink[800]!,
        backgroundColor: Colors.pink[50]!,
      ),
      Taskgroupdata(
        title: "Freelance",
        taskCount: 12,
        progress: 0.53,
        icon: Icons.work,
        iconColor: Colors.orange[900]!,
        backgroundColor: Colors.orange[50]!,
      ),
      Taskgroupdata(
        title: "Learning New",
        taskCount: 15,
        progress: 0.92,
        icon: Icons.layers_sharp,
        iconColor: Colors.green[600]!,
        backgroundColor: Colors.green[50]!,
      ),
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Task groups",
          style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
        ),

        SizedBox(height: 10),
        ...taskGroups.map(
          (group) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Taskgroups(data: group),
          ),
        ),
      ],
    );
  }
}
