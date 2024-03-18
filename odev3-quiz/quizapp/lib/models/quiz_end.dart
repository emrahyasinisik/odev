import 'package:flutter/material.dart';
import 'package:quizapp/quiz_start_screen.dart';

class quizend extends StatefulWidget {
  const quizend({super.key});

  @override
  State<quizend> createState() => _quizendState();
}

class _quizendState extends State<quizend> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(12)),
          child: const Center(
            child: Text(
              "Bitti",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
