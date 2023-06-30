import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white10,
      ),
      child: const Row(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Shape(Colors.amber),
                  Shape(Colors.amber),
                ],
              ),
              Row(
                children: [
                  Shape(Colors.amber),
                  Shape(Colors.amber),
                ],
              ),
              Shape(Colors.black45),
            ],
          )
        ],
      ),
    );
  }
}

class Shape extends StatelessWidget {
  const Shape(this.clr, {super.key});

  // ignore: prefer_typing_uninitialized_variables
  final clr;

  @override
  Widget build(context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.445,
      color: clr,
      margin: const EdgeInsets.all(10),
    );
  }
}
