import 'package:flutter/material.dart';
import 'package:quiz_app_2/models/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var questionIndex = 0;

  void answerQuestion(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);

    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[questionIndex];

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            // 'Questions here...',
            currentQuestion.question,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 12,),

          // ElevatedButton(
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.black,
          //   ),
          //   child: const Text(
          //     'Answer 1',
          //     style: TextStyle(
          //       fontSize: 16,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),

          // ElevatedButton(
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.black,
          //   ),
          //   child: const Text(
          //     'Answer 2',
          //     style: TextStyle(
          //       fontSize: 16,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),

          // ElevatedButton(
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.black,
          //   ),
          //   child: const Text(
          //     'Answer 3',
          //     style: TextStyle(
          //       fontSize: 16,
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
