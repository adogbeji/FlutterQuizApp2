import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.onStartQuiz});

  final void Function() onStartQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 240,),

          const SizedBox(height: 14,),

          OutlinedButton(
            onPressed: onStartQuiz,
            child: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}