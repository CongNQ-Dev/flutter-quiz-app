import 'package:flutter/material.dart';

import 'backgound-container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple[800],
        body: BackgroundContainer(),
      ),
    );
  }
}
