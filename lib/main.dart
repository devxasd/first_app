import 'package:flutter/material.dart';
import 'custom_widget.dart';

//Global variables
const color1 = Colors.cyan;
const color2 = Colors.indigo;
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        //Passing arguments 
        body: CustomWidget(),
      ),
    ),
  );
}
