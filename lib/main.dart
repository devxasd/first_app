import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 20, 199, 0),
              Color.fromARGB(255, 139, 219, 0),
            ]),
          ),
          child: const Center(
            child: Text('data'),
          ),
        ),
      ),
    ),
  );
}
