import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: CustomWidget(),
      ),
    ),
  );
}

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});
  //Or
  //CustomWidget({key}):super(key:key);
  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.cyan,
            Colors.indigo,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
