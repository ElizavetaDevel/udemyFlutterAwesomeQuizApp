import 'package:awesome_quiz_app/base_ui/questions_summary.dart';
import 'package:awesome_quiz_app/base_ui/styled_text.dart';
import 'package:awesome_quiz_app/data/questions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ResultsWidget extends StatelessWidget {
  const ResultsWidget(
      {super.key, required this.answers, required this.restart});

  final List<String> answers;
  final VoidCallback restart;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < answers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': answers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    final summary = getSummaryData();
    final totalNum = questions.length;
    final correctNum = summary.where((item) {
      return item['user_answer'] == item['correct_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            StyledText(
                'You answered $correctNum out of $totalNum questions correctly!',
                22,
                Colors.white),
            const SizedBox(
              height: 32,
            ),
            QuestionsSummary(summary),
            const SizedBox(
              height: 24,
            ),
            OutlinedButton.icon(
              onPressed: restart,
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                    color: Color.fromARGB(126, 28, 4, 22), width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              icon: const Icon(Icons.restart_alt),
              label: const StyledText('Restart quiz', 12, Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
