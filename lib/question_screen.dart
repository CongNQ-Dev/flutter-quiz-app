import "package:flutter/material.dart";
import "package:quiz/aswer_button.dart";
import "./data/questions.dart";

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    final currentQuestions = questions[0];
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestions.text,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestions.answers
              .map((item) => AnswerButton(answerText: item, onTap: () {}))
        ],
      ),
    );
  }
}
