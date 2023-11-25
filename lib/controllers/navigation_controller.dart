import 'package:awesome_quiz_app/base_ui/gradient_container.dart';
import 'package:awesome_quiz_app/controllers/home_controller.dart';
import 'package:awesome_quiz_app/controllers/quiz_controller.dart';
import 'package:flutter/material.dart';

enum Screen {
  home,
  quiz,
}

class NavigationController extends StatefulWidget {
  const NavigationController({super.key});

  @override
  State<NavigationController> createState() => _NavigationControllerState();
}

class _NavigationControllerState extends State<NavigationController> {
  static const colors = [
    Color.fromARGB(255, 79, 10, 102),
    Color.fromARGB(255, 34, 4, 86)
  ];

  Screen activeScreen = Screen.home;

  void onStartPressed() {
    setState(() {
      activeScreen = Screen.quiz;
    });
  }

  Widget displayScreen() {
    switch (activeScreen) {
      case Screen.home:
        return HomeController(onStartPressed);
      case Screen.quiz:
        return const QuizController();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientContainer(displayScreen(), colors),
    );
  }
}
