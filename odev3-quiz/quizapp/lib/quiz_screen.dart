import 'package:flutter/material.dart';
import 'package:quizapp/data/question_data.dart';
import 'package:quizapp/models/question.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<Question> questionList = getQuetions();
  int currenQuestionIndex = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        child: Column(
          children: [
            _questionwidget(),
          ],
        ),
      ),
    );
  }

  _questionwidget() {
    return Column(
      children: [
        const SizedBox(
          height: 100,
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          margin: const EdgeInsets.only(top: 100),
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.blue[800],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            questionList[currenQuestionIndex].question,
            style: const TextStyle(
                decoration: TextDecoration.none,
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 24),
        _answerList(),
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currenQuestionIndex]
          .answers
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.all(8),
        height: 50,
        child: ElevatedButton(
          child: Text(
            answer.answerText,
            style: TextStyle(color: Colors.blueGrey[900]),
          ),
          onPressed: () {},
        ));
  }
}
