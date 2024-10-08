import 'package:quiz_app_2/models/quiz_question.dart';
import 'package:quiz_app_2/views/widgets/quiz.dart';

List<QuizQuestion> questions = [
  QuizQuestion(
    question: 'How many days in a week?',
    // answers: ([4, 9, 2, 7, 5]) as List<String>,
    answers: [4.toString(), 9.toString(), 2.toString(), 7.toString(), 5.toString()],
    correctAnswer: 7.toString(),
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
  QuizQuestion(
    question: 'What is NatWest?',
    answers: [
      'Shop',
      'Airline Company',
      'Political Group',
      'Bank',
      'TV Show',
      'Currency'
    ],
    correctAnswer: 'Bank',
  ),
  QuizQuestion(
    question: 'What job is the most dangerous?',
    answers: [
      'Doctor',
      'Accountant',
      'Teacher',
      'Soldier',
      'Flight Attendant',
      'Chef'
    ],
    correctAnswer: 'Soldier',
  ),
];