import 'package:flutter/material.dart';
import 'package:quizapp/quizscreen.dart';

class QuizStartScreen extends StatefulWidget {
  const QuizStartScreen({super.key});

  @override
  State<QuizStartScreen> createState() => _QuizStartScreenState();
}

class _QuizStartScreenState extends State<QuizStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const QuizScreen()));
            },
            child: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 30),
            )),
      ),
    );
  }
}
