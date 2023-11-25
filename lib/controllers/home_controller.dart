import 'package:awesome_quiz_app/widgets/home_widget.dart';
import 'package:flutter/material.dart';

class HomeController extends StatefulWidget {
  const HomeController({super.key});

  @override
  State<HomeController> createState() => _HomeControllerState();
}

class _HomeControllerState extends State<HomeController> {
  onStartPressed() {
    //on start press handler
  }

  @override
  Widget build(BuildContext context) {
    return HomeWidget(onPressed: onStartPressed);
  }
}
