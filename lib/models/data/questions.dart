import 'package:quiz_app_2/models/quiz_question.dart';
import 'package:quiz_app_2/views/widgets/quiz.dart';

List<QuizQuestion> questions = [
  QuizQuestion(
    question: 'How many days in a week?',
    answers: ([4, 9, 2, 7, 5]) as List<String>,
    correctAnswer: 7 as String
  ),
  QuizQuestion(
    question: 'What fruit is yellow?',
    answers: [
      'Pear',
      'Kiwi',
      'Apple',
      'Lemon',
      'Mango', 
      'Grapes',
    ],
    correctAnswer: 'Lemon',
  ),
  QuizQuestion(
    question: 'Which technology is used for mobile apps?',
    answers: [
      'JavaScript',
      'Node.js',
      'SQL', 
      'Docker',
      'Flutter',
      'Python'
    ],
    correctAnswer: 'Flutter',
  ),
];