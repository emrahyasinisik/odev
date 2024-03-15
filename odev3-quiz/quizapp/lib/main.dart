import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizapp/models/quiz_end.dart';
import 'package:quizapp/quiz_start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const quizStartScreen(),
    );
  }
}
