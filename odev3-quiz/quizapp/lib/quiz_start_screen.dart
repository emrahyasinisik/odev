import 'package:flutter/material.dart';
import 'package:quizapp/quizscreen.dart';

class quizStartScreen extends StatefulWidget {
  const quizStartScreen({super.key});

  @override
  State<quizStartScreen> createState() => _quizStartScreenState();
}

class _quizStartScreenState extends State<quizStartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[200],
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => quizScreen()));
            },
            child: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 30),
            )),
      ),
    );
  }
}
