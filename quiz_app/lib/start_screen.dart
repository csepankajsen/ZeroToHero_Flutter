import 'package:flutter/material.dart';
// import 'package:quiz_app/wallpaper.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/background/img_QuizHomePage2.jpg',
            width: 300,
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            'Start screen',
            style: TextStyle(
              color: Color.fromARGB(255, 0, 2, 5),
              fontSize: 30,
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(foregroundColor: Color.fromARGB(255, 228, 10, 13)),
            child: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
