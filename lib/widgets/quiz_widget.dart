import 'package:awesome_quiz_app/base_ui/answer_button.dart';
import 'package:awesome_quiz_app/base_ui/styled_text.dart';
import 'package:awesome_quiz_app/models/quiz_question.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  const QuizWidget(this.question, this.onSelect, {super.key});

  final QuizQuestion question;

  final void Function(String) onSelect;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: StyledText(question.text, 24, Colors.white),
          ),
          const SizedBox(height: 32),
          ...question.getShuffledAnswers().map((answer) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
              child: AnswerButton(
                  answerText: answer,
                  onSelect: () {
                    onSelect(answer);
                  }),
            );
          }),
        ],
      ),
    );
  }
}
