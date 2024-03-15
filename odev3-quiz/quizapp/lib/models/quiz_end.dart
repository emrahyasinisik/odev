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
        body: Center(
      child: ElevatedButton(
        onPressed: () {
          //   Navigator.push(context,
          //       MaterialPageRoute(builder: (context) => quizStartScreen()));
        },
        child: Text("Bitti"),
      ),
    ));
  }
}
