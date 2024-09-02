import 'package:flutter/material.dart';
import 'package:quiz_app_2/models/data/questions.dart';
import 'package:quiz_app_2/views/widgets/answer_button.dart';

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

  void changeQuestion(int a) {
    if (a == 1) {
      if (questionIndex < questions.length && questionIndex != questions.length - 1) {
        setState(() {
          questionIndex++;
          print(questionIndex);
        });
      }
    }
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

          ...currentQuestion.answers.map((answer) {
            return AnswerButton(answer: answer, onTap: () {
              return answerQuestion(answer);
            });
          }),

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

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Prev', style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),),
              ),

              TextButton(
                onPressed: () {
                  changeQuestion(1);
                },
                child: const Text('Next', style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                ),),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
