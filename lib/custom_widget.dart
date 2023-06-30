import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  //Two parameters which automatically assign values to this class variables color1 and color2
  const CustomWidget(this.color1, this.color2, {super.key});
  //Or
  //const CustomWidget({super.key,required this.color1,required this.color2});

  // ignore: prefer_typing_uninitialized_variables
  final color1, color2;
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
        child: Image.asset(
          'assets/images/dice-1.png',
          width: 200,
        ),
      ),
    );
  }
}
