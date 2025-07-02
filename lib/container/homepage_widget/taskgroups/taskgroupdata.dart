import 'package:flutter/widgets.dart';

class Taskgroupdata {
  final String title;
  final int taskCount;
  final double progress;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;

  Taskgroupdata({
    required this.title,
    required this.taskCount,
    required this.progress,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
  });

  static map(Padding Function(dynamic group) param0) {}
}

class InProgressdata {
  final String title;
  final String title2;
  final double progress;
  final IconData icon;
  final Color iconColor;
  final IconData iconmood;
  final Color backgroundColor;
  final Color containerColor;

  InProgressdata({
    required this.title,
    required this.title2,
    required this.progress,
    required this.icon,
    required this.iconColor,
    required this.iconmood,
    required this.backgroundColor,
    required this.containerColor,
  });

  static map(Padding Function(dynamic group) param0) {}
}
