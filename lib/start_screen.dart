import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});
  final void Function() startQuiz;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 132, 43, 100),
          const Color.fromARGB(255, 132, 43, 200),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            width: 300,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          // Opacity(
          //     opacity: 0.6,
          //     child: Image.asset("assets/images/quiz-logo.png", width: 300)),
          const SizedBox(height: 80),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 24),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
              onPressed: () {
                startQuiz();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors
                    .transparent, // Set the foreground color to transparent
                shadowColor:
                    Colors.transparent, // Set the shadow color to transparent
                side: const BorderSide(
                    color: Colors.black, width: 0.1), // Thêm viền đen
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                "Start Quiz",
                style: TextStyle(
                  color: Colors.white,
                ),
              ))
        ],
      )),
    );
  }
}
