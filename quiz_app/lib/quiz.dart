import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget activeScreen = StartScreen(switchScreen); //storingt widget in a variable type widget but this will show error because it is being initialized before call so to over come this we need to use inbuilt initstate method like below
  Widget? activeScreen;//using question mark to tell trhat initially this can be null also

  @override // this will initialize first
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      
    activeScreen = const QuestionsScreen();
      
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(252, 244, 214, 96),
                Color.fromARGB(248, 143, 249, 5)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
