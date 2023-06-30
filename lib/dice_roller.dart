import 'dart:math';

import 'package:flutter/material.dart';
import 'package:first_app/styled_text.dart';

//To make code efficient make object outside so it would create everytime when button is pressed
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;
  var output = 'Roll Dice';
  //function defination
  void rollDice() {
    setState(() {
      var randomNumber = randomizer.nextInt(6) + 1;
      currentDiceRoll = randomNumber;
      output = '$randomNumber';

      //code
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const StyledText('Roll Dice App'),
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
          TextButton(
            //Anonymous function
            onPressed: rollDice,
            style: TextButton.styleFrom(
                fixedSize: const Size(150, 50),
                textStyle: const TextStyle(
                  fontSize: 20,
                ),
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent),
            child: Text(
              output,
            ),
          ),
        ],
      ),
    );
  }
}
