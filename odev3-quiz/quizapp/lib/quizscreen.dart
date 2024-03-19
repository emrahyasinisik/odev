import 'package:flutter/material.dart';
import 'package:quizapp/data/question_data.dart';
import 'package:quizapp/models/quiz_end.dart';
import 'package:quizapp/widgets/answer_button.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => QuizScreenState();
}

class QuizScreenState extends State<QuizScreen> {
  int currentQuestionIndex = 0;
  bool resultPage = false;
  List<String> selectedAnswers = [];

  void answer() {
    // Cevap verildiğinde verilen cevapları hafızada tut.
    // Sonuç ekranını tasarlayınız.
    setState(
      () {
        if (currentQuestionIndex < questions.length - 1) {
          currentQuestionIndex++;
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Quizend(
                  selectedAnswers: selectedAnswers, questions: questions),
            ),
          );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    debugPrint(selectedAnswers.toString());
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 55),
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.black)),
              padding: const EdgeInsets.only(top: 50, left: 20),
              child: Text(
                currentQuestion.question,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 55, top: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: currentQuestion.answers
                  .map(
                    (e) => AnswerButton(
                      answer: e,
                      onPressed: () {
                        answer();
                        selectedAnswers.add(e);
                      },
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
