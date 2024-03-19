import 'package:flutter/material.dart';

class AnswerButton extends StatefulWidget {
  final String answer;
  final Function onPressed;
  const AnswerButton(
      {super.key, required this.answer, required this.onPressed});

  @override
  State<AnswerButton> createState() => _AnswerButtonState();
}

class _AnswerButtonState extends State<AnswerButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ElevatedButton(
          onPressed: () {
            widget.onPressed();
          },
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(300, 50),
            maximumSize: const Size(300, 70),
          ),
          child: Text(
            widget.answer,
            style: const TextStyle(fontSize: 20),
          )),
    );
  }
}
