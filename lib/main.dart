import 'package:flutter/material.dart';
import 'package:taskf_lutter/mainscrren.dart';
import 'package:taskf_lutter/new_screen.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainscrren(),
    );
  }
}
