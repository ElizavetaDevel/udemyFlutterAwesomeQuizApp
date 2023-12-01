import 'package:awesome_quiz_app/base_ui/styled_text.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (data['user_answer'] == data['correct_answer'])
                            ? Colors.greenAccent
                            : Colors.redAccent),
                    child: Center(
                      child: StyledText(
                        ((data['question_index'] as int) + 1).toString(),
                        16,
                        Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StyledText(
                          data['question'] as String,
                          14,
                          Colors.white,
                          fontWeight: FontWeight.bold,
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        StyledText(
                          data['user_answer'] as String,
                          12,
                          Colors.redAccent,
                          textAlign: TextAlign.left,
                        ),
                        StyledText(
                          data['correct_answer'] as String,
                          12,
                          Colors.greenAccent,
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
