import 'package:flutter/material.dart';

class StackO extends Stack {
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Positioned(
          top: 100,
          // left: 100,
          // right: 10,
          //we cant give it width with left and right together
          width: 200,
          height: 200,
          child: Container(
            color: Colors.blue,
            width: 400,
            height: 400,
          ),
        ),
        Container(
          color: Colors.green,
          width: 300,
          height: 300,
        ),
      ],
    );
  }
}
