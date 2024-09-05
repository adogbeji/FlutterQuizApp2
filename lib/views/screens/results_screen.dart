import 'package:flutter/material.dart';
import 'package:quiz_app_2/models/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers});

  final List<String> chosenAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var x = 0; x < chosenAnswers.length; x++) {
      summary.add({
        'question_index': 1,
        'question': questions[x].question,
        'chosen_answer': chosenAnswers[x],
        'correct_answer': questions[x].correctAnswer,
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Results Screen'),
      ),
    );
  }
}