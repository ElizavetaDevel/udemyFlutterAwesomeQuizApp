import 'package:awesome_quiz_app/base_ui/gradient_container.dart';
import 'package:awesome_quiz_app/base_ui/styled_text.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  static const colors = [
    Color.fromARGB(255, 79, 10, 102),
    Color.fromARGB(255, 34, 4, 86)
  ];

  const HomeWidget({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/quiz-logo.png',
                  width: 200,
                ),
                const SizedBox(height: 48),
                const StyledText(
                    'Learn Flutter the fun way!', 18, Colors.white),
                const SizedBox(height: 32),
                OutlinedButton(
                  onPressed: onPressed,
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color.fromARGB(126, 28, 4, 22)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const StyledText('Start quiz', 12, Colors.white),
                ),
              ],
            ),
          ),
          colors),
    );
  }
}
