import 'package:flutter/material.dart';

import 'start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: StartScreen([
          const Color.fromARGB(255, 132, 43, 100),
          const Color.fromARGB(255, 132, 43, 200),
        ]),
      ),
    );
  }
}
