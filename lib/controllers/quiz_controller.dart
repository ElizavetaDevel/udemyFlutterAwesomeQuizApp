import 'package:awesome_quiz_app/widgets/quiz_widget.dart';
import 'package:flutter/material.dart';
import 'package:awesome_quiz_app/data/questions.dart';

class QuizController extends StatefulWidget {
  const QuizController({super.key, required this.onSelectAnswer});

  final void Function(String) onSelectAnswer;

  @override
  State<QuizController> createState() => _QuizControllerState();
}

class _QuizControllerState extends State<QuizController> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      currentQuestionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return QuizWidget(questions[currentQuestionIndex], (answer) {
      answerQuestion(answer);
    });
  }
}
