import 'package:flutter/material.dart';
import 'package:quiz_app/Models/questions.dart';
import 'package:quiz_app/Screens/home_screen.dart';
import 'package:quiz_app/Screens/question_screens.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswer = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);
    if (activeScreen == "Result-Screen") {
      switchScreen();
    }
    if (selectedAnswer.length == question.length) {
      setState(() {
        selectedAnswer = [];
        activeScreen = "Result-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = Home_Screen(switchScreen);

    if (activeScreen == "question-screen") {
      screenWidget =  Questions(
        onSelectAnswer : (answer) {
          
        },
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color.fromARGB(255, 53, 24, 102),
              Color.fromARGB(255, 104, 54, 190)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: screenWidget),
      ),
    );
  }
}
