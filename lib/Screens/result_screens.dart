import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({super.key});

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
