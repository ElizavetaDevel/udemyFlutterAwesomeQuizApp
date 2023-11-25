import 'package:awesome_quiz_app/widgets/quiz_widget.dart';
import 'package:flutter/material.dart';

class QuizController extends StatefulWidget {
  const QuizController({super.key});

  @override
  State<QuizController> createState() => _QuizControllerState();
}

class _QuizControllerState extends State<QuizController> {
  @override
  Widget build(BuildContext context) {
    return const QuizWidget();
  }
}
