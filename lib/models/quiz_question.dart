class QuizQuestion {
  final String text;
  final List<String> _answers;
  const QuizQuestion(this.text, this._answers);
  List getShuffledAnswers() {
    List shuffledList = List.of(_answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
