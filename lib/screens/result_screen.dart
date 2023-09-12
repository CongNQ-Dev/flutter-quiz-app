import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});
  void restartAnswer() {}
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("You answered the question"),
            SizedBox(
              height: 30,
            ),
            Text("List of answers"),
            SizedBox(
              height: 30,
            ),
            TextButton(
              child: Text("Restart"),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
