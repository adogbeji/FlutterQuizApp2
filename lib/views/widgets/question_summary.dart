import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((data) {
            return Card(
              child: Row(
                children: [
                  // Text((data['question_index'] as int) as String),
                  Text((data['question_index'] as int).toString(), style: const TextStyle(
                    fontSize: 20,
                  ),),

                  Spacer(),
                      
                  Column(
                    children: [
                      // Text(data['question'].toString(),),
                      Text(data['question'] as String, style: const TextStyle(
                        fontSize: 20,
                      ),),
                      const SizedBox(height: 7,),
                      Text(data['chosen_answer'] as String, style: const TextStyle(
                        fontSize: 20,
                      ),),
                      Text(data['correct_answer'] as String, style: const TextStyle(
                        fontSize: 20,
                      ),),
                    ],
                  ),
                ]
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}