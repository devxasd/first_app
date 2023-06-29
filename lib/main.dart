import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
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
        ),
      ),
    ),
  );
}
