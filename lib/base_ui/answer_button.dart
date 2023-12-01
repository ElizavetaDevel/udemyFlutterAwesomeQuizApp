import 'package:awesome_quiz_app/base_ui/styled_text.dart';
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton(
      {super.key, required this.answerText, required this.onSelect});

  final String answerText;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onSelect,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          backgroundColor: const Color.fromARGB(175, 33, 1, 95),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        ),
        child: StyledText(answerText, 18, Colors.white));
  }
}
