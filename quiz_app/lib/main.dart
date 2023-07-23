import 'package:flutter/material.dart';
import 'package:quiz_app/wallpaper.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: WallPaperManager(),
      ),
      Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Questions'),
          Text(),
        ],
      ),
    ),
  );
}
