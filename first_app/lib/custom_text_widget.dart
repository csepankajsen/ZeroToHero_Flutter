import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({super.key});
  @override
  Widget build(context) {
    return const Text(
      'Hello Dart',
      style: TextStyle(
        fontSize: 30,
        color: Color.fromARGB(252, 76, 51, 3),
      ),
    );
  }
}
