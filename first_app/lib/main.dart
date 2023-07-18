import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(209, 94, 94, 243),
        body: GradientContainer(),
      ),
    ),
  );
}