class Question {
  Question(this.question, this.answers);
  final String question;
  final List<Answer> answers;
}

class Answer {
  Answer(this.answerText, this.isCorrect);
  String answerText;
  final bool isCorrect;
}
