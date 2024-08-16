class QuizQuestion {
  QuizQuestion({required this.question, required this.answers, required this.correctAnswer});

  final String question;
  final List<String> answers;
  final String correctAnswer;
}