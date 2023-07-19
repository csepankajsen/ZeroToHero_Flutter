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
  // const GradientContainer({super.key, required this.colors});---can use this when passing the colors in list
  // const GradientContainer(this.colors, {super.key});---can also use this
  GradientContainer(this.colorMix1, this.colorMix2, {super.key});

  // final List<Color> colors;---can use when passing the colors in list
  final Color colorMix1, colorMix2;
  var activeDiceImage = 'assets/images/dice-2.png';

  void rolldice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print("debugging image change and stateless widget");
  }

  @override
  Widget build(context) {
    // endAlignment = Alignment.bottomRight;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // colors: colors,------can use when passing colors in list
          colors: [colorMix1, colorMix2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        // child: CustomTextWidget('Hello Dart'),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            // TextButton(onPressed: () {}, child: const Text('Roll Dice'))---can define ananymous function.
            TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(
                    20.0), //---we can add passing but can prefer sizedbox metrhod above
                foregroundColor: Colors.white,
              ),
              child: const CustomTextWidget('Roll Dice'),
            )
          ],
        ),
      ),
    );
  }
}
