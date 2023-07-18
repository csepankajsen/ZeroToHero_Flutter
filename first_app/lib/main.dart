import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromARGB(209, 94, 94, 243),

        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(152, 121, 180, 238),
                Color.fromARGB(183, 2, 33, 65)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Center(
            child: Text(
              'Hello Dart',
              style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(252, 76, 51, 3),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
