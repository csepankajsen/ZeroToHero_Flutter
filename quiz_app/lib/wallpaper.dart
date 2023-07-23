import 'package:flutter/material.dart';

class WallPaperManager extends StatelessWidget {
  const WallPaperManager({super.key});

  @override
  Widget build(context) {
    return Container(
      // constraints: const BoxConstraints(maxHeight: double.maxFinite,maxWidth: double.maxFinite),
      constraints: const BoxConstraints(),
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/background/img_QuizHomePage2.jpg"),
            fit: BoxFit.cover),
      ),
    );
  }
}