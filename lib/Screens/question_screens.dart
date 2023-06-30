import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  const Questions({super.key});

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "The Questions...",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer-1"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer-2"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer-3"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Answer-4"),
          )
        ],
      ),
    );
  }
}
