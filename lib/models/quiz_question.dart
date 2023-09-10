class QuizQuestion {
  final String text;
  final List<String> _answers;
  const QuizQuestion(this.text, this._answers);
  List getShuffledAnswers() {
    List suffledList = List.of(_answers);
    suffledList.shuffle();
    return suffledList;
  }
}
