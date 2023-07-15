import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 280,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Learn Flutter Fun Way',
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 211, 206, 212), fontSize: 24),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              icon: const Icon(Icons.arrow_forward_ios_sharp),
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              label: const Text('Start Quiz'))
        ],
      ),
    );
  }
}
