import 'package:flutter/material.dart';
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(209, 94, 94, 243),
        // body: GradientContainer(colors:
        //   [Color.fromARGB(152, 121, 180, 238), Color.fromARGB(183, 2, 33, 65)]
        // ),---can pass colors in list here
        body: GradientContainer(Color.fromARGB(152, 121, 180, 238), Color.fromARGB(183, 2, 33, 65)
        ),
      ),
    ),
  );
}
