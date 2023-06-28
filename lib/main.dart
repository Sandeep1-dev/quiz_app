import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/quiz.dart';

void main(List<String> args) {
  runApp(const Quiz_App());
}

class Quiz_App extends StatelessWidget {
  const Quiz_App({super.key});

  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}
