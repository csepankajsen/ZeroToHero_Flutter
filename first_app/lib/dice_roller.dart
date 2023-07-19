import 'package:flutter/material.dart';
import 'package:first_app/custom_text_widget.dart';
import 'dart:math';

///for using the random function
final randomizer =
    Random(); // because no need to recrete the object again and again

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rolldice() {
    // var randomDiceRoll = Random().nextInt(6) +1;
    setState(() {
      // currentDiceRoll = Random().nextInt(6) + 1;// not most appropriate method b/c we are creating everey time new obj of random. So used randamoizer
      currentDiceRoll = randomizer.nextInt(6) + 1;
      // activeDiceImage = 'assets/images/dice-$randomDiceRoll.png';
      // ignore: avoid_print
      print("debugging image change and stateless widget");
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextWidget('$currentDiceRoll'),
        const SizedBox(
          height: 50,
        ),
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 50,
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
        ),
      ],
    );
  }
}
