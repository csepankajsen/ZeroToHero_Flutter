import 'package:flutter/material.dart';
// import 'package:quiz_app/wallpaper.dart';

class StartScreen extends StatelessWidget {
  // const StartScreen(void Function() StartQuiz, {super.key});//can also pass function like this
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
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
          // Icon(),---can also use icon outside of the button
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: const Color.fromARGB(255, 228, 10, 13)),
            // icon: Text()
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text('Start Quiz'),
          )
        ],
      ),
    );
  }
}
