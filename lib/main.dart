import 'package:flutter/material.dart';
import 'package:todocopy/pages/homepage.dart';

void main() {
  runApp(to_do_app());
}

// ignore: camel_case_types
class to_do_app extends StatelessWidget {
  const to_do_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Homepage());
  }
}
