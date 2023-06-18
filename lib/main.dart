import 'package:flutter/material.dart';
import 'package:quiz_app/Screens/home_screen.dart';

void main(List<String> args) {
  runApp(const Quiz_App());
}

class Quiz_App extends StatelessWidget {
  const Quiz_App({super.key});

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
            child: const Home_Screen()),
      ),
    );
  }
}
