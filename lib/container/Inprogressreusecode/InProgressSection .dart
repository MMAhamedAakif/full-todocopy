import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'taskItem.dart';

void main() =>
    runApp(const MaterialApp(home: Scaffold(body: InProgressSection())));

class InProgressSection extends StatefulWidget {
  const InProgressSection({super.key});

  @override
  State<InProgressSection> createState() => _InProgressSectionState();
}

class _InProgressSectionState extends State<InProgressSection> {
  final List<TaskItem> tasks = [
    TaskItem(
      title: "Office Project",
      subtitle: "Project shopping app design",
      containerColor: Colors.blue[200]!,
      backgroundColor: Colors.blue[50]!,
      iconColor: Colors.blue[800]!,
      icon: Icons.work,
      iconmood: Icons.sentiment_satisfied,
      progress: 0.65,
    ),
    TaskItem(
      title: "Personal Task",
      subtitle: "Fitness tracker app",
      containerColor: Colors.pink[200]!,
      backgroundColor: Colors.pink[50]!,
      iconColor: Colors.pink[800]!,
      icon: Icons.person_pin_circle_rounded,
      iconmood: Icons.sentiment_very_satisfied,
      progress: 0.85,
    ),
    TaskItem(
      title: "Freelance",
      subtitle: "Finding Freelancing job",
      containerColor: Colors.orange[200]!,
      backgroundColor: Colors.orange[50]!,
      iconColor: Colors.orange[800]!,
      icon: Icons.work,
      iconmood: Icons.sentiment_very_satisfied,
      progress: 0.59,
    ),
    TaskItem(
      title: "Learning New",
      subtitle: "New Flutter Widgets",
      containerColor: Colors.green[200]!,
      backgroundColor: Colors.green[50]!,
      iconColor: Colors.green[800]!,
      icon: Icons.layers,
      iconmood: Icons.sentiment_very_satisfied,
      progress: 0.85,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 6),
          child: Text(
            "In Progress ",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 135,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 0),
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              return Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: Container(
                  width: 250,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: task.containerColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            task.title,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 12,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: task.backgroundColor,
                            radius: 18,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                task.icon,
                                size: 20,
                                color: task.iconColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 1),
                      Text(
                        task.subtitle,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const Spacer(),
                      LinearPercentIndicator(
                        restartAnimation: true,
                        addAutomaticKeepAlive: true,
                        width: 200.0,
                        fillColor: Colors.transparent,
                        padding: EdgeInsets.zero,
                        backgroundColor: task.backgroundColor,
                        progressColor: task.iconColor,
                        percent: task.progress,

                        lineHeight: 6,
                        barRadius: const Radius.circular(10),
                        animation: true,
                        animationDuration: 1000,
                        trailing: Text(
                          "  ${task.progress * 100.toInt()}%",
                          style: TextStyle(
                            color: task.iconColor,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// class ProjectTask {
//   final String category;
//   final String title;
//   final Color color;
//   final IconData icon;
//   final Color progressColor;
//   final double progress;

//   ProjectTask({
//     required this.category,
//     required this.title,
//     required this.color,
//     required this.icon,
//     required this.progressColor,
//     required this.progress,
//   });
// }
