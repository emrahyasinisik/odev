import 'package:flutter/material.dart';
import 'package:quizapp/models/question.dart';

class Quizend extends StatelessWidget {
  final List<Question> questions;
  final List<String> selectedAnswers;

  const Quizend({
    super.key,
    required this.questions,
    required this.selectedAnswers,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Container(
          height: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < questions.length; i++)
                Text(
                  "${i + 1}. sorunun cevabı: ${selectedAnswers[i]}",
                  style: const TextStyle(fontSize: 20),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
