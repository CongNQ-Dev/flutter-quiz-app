import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.colors, {super.key});
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png", width: 300),
          const SizedBox(height: 80),
          const Text(
            "Learn Flutter the fun way!",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontSize: 24),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors
                    .transparent, // Set the foreground color to transparent
                shadowColor:
                    Colors.transparent, // Set the shadow color to transparent
                side: const BorderSide(
                    color: Colors.black, width: 0.1), // Thêm viền đen
              ),
              icon: const Icon(Icons.start),
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
