import 'package:awesome_quiz_app/widgets/home_widget.dart';
import 'package:flutter/material.dart';

class HomeController extends StatefulWidget {
  const HomeController(this.onStartPressed, {super.key});

  final VoidCallback onStartPressed;

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  @override
  Widget build(BuildContext context) {
    return HomeWidget(widget.onStartPressed);
  }
}
