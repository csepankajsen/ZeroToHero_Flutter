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
            ),
          ),
          child: const Center(
            child: Text('My First app'),
          ),
        ),
      ),
    ),
  );
}
