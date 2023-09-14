import "package:flutter/material.dart";
import 'package:quiz/screens/question_screen.dart';
import 'package:quiz/screens/start_screen.dart';
import "./data/questions.dart";
import 'package:quiz/screens/result_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  // late Widget activeScreen;
//solution 1
  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }
  List<String> selectedAnswer = [];
  //solution 2
  var activeScreen = "start-screen";
  void switchScreen() {
    setState(() {
      activeScreen = "question-screen";
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswer.add(answer);

    if (questions.length == selectedAnswer.length) {
      setState(() {
        activeScreen = "result-screen";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == "question-screen") {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswer,
      );
    } else if (activeScreen == "result-screen") {
      screenWidget = ResultScreen(
        chosenAnswer: selectedAnswer,
      );
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 132, 43, 100),
              const Color.fromARGB(255, 132, 43, 200),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: screenWidget,
          // child: activeScreen == "start-screen"
          //     ? StartScreen(switchScreen)
          //     : QuestionsScreen(
          //         onSelectAnswer: chooseAnswer,
          //       ),
        ),
      ),
    );
  }
}
