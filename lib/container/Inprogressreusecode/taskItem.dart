import 'package:flutter/material.dart';

class TaskItem {
  final String title;
  final String subtitle;
  final Color containerColor;
  final Color backgroundColor;
  final Color iconColor;
  final IconData icon;
  final IconData iconmood;
  final double progress;

  TaskItem({
    required this.title,
    required this.subtitle,
    required this.containerColor,
    required this.backgroundColor,
    required this.iconColor,
    required this.icon,
    required this.iconmood,
    required this.progress,
  });
}
