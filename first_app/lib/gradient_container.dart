import 'package:flutter/material.dart';
import 'package:first_app/custom_text_widget.dart';

// can use final if we don't want my variable chnaged or overwrite by another
// final startAlignment = Alignment.topLeft;
// final endAlignment = Alignment.bottomRight;

// if we know that values are fixed at the complie time then we can use const keyword instaed of final for better performanance
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

// var startAlignment = Alignment.topLeft;
// var endAlignment = Alignment.bottomRight;

// Alignment? endAlignment;--not relaiable if not initialinzing the variable with value

class GradientContainer extends StatelessWidget {
  // GradientContainer({key}): super(key: key);---one way to pass key  and pass that to key parent class constructor
  const GradientContainer({super.key});
  @override
  Widget build(context) {
    // endAlignment = Alignment.bottomRight;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(152, 121, 180, 238),
            Color.fromARGB(183, 2, 33, 65)
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        child: CustomTextWidget(),
      ),
    );
  }
}
