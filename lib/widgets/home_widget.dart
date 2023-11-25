import 'package:awesome_quiz_app/base_ui/styled_text.dart';
import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget(this.onPressed, {super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 250,
            color: const Color.fromARGB(149, 255, 255, 255),
          ),
          const SizedBox(height: 80),
          const StyledText('Learn Flutter the fun way!', 18, Colors.white),
          const SizedBox(height: 32),
          OutlinedButton.icon(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                  color: Color.fromARGB(126, 28, 4, 22), width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
            icon: const Icon(Icons.arrow_right),
            label: const StyledText('Start quiz', 12, Colors.white),
          ),
        ],
      ),
    );
  }
}
