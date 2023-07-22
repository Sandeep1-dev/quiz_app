import 'package:flutter/material.dart';
import 'package:quiz_app/Models/questions.dart';

class Result extends StatelessWidget {
  const Result({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getsummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question-index': i,
        'question': question[i].text,
        'correct-answer': question[i].answers[0],
        'user-answer': chosenAnswers[i],
      });
    }

    return getsummaryData();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You Answered x to y correctly"),
            const SizedBox(
              height: 20,
            ),
            const Text("list of answers and questions"),
            const SizedBox(
              height: 20,
            ),
            TextButton(onPressed: () {}, child: const Text("Restart-Quiz"))
          ],
        ),
      ),
    );
  }
}
