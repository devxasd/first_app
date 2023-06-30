import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  //Two parameters which automatically assign values to this class variables color1 and color2
  const CustomWidget(this.color1, this.color2, {super.key});
  //Or
  //const CustomWidget({super.key,required this.color1,required this.color2});

  // ignore: prefer_typing_uninitialized_variables
  final color1, color2;

  //function defination
  void rollDice() {
    //code
  }
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            //using class variables to get colors
            color1,
            color2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const StyledText('Roll Dice App'),
            Image.asset(
              'assets/images/dice-1.png',
              width: 200,
            ),
            FilledButton(
              //Normal Function calling
              onPressed: rollDice,
              child: const Text('Roll Dice'),
            ),
            //I used for giving empty space
            const SizedBox(
              height: 30,
            ),
            TextButton(
              //Anonymous function
              onPressed: () {},
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.all(20),
                  textStyle: const TextStyle(
                    fontSize: 20,
                  ),
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueAccent),
              child: const Text(
                "Learn More",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
