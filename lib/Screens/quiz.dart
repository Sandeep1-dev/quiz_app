import 'package:flutter/material.dart';

import 'package:quiz_app/Screens/home_screen.dart';
import 'package:quiz_app/Screens/question_screens.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(255, 53, 24, 102),
            Color.fromARGB(255, 104, 54, 190)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
          child: activeScreen == 'start-screen'
              ? Home_Screen(switchScreen)
              : const Questions(),
        ),
      ),
    );
  }
}
