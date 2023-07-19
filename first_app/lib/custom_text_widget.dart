import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget(this.text, {super.key});
  // String text;--can use this but since once the value received is not going to be chnaged further or reassigned we can use final
  final String text;
  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 30,
        color: Color.fromARGB(253, 131, 3, 3)
      ),
    );
  }
}
