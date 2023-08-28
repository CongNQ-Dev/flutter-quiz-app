import "package:flutter/material.dart";

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png", width: 300),
          SizedBox(height: 50),
          Text(
            "Learn Flutter the fun way!",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors
                    .transparent, // Set the foreground color to transparent
                shadowColor:
                    Colors.transparent, // Set the shadow color to transparent
                side: BorderSide(
                    color: Colors.black, width: 0.1), // Thêm viền đen
              ),
              child: Text(
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
