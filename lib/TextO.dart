import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// ignore: must_be_immutable
class TextO extends Text {
  TextO(String data) : super(data);

  Text build(BuildContext context) {
    return Text(
      this.data,
      textDirection: TextDirection.ltr,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 20,
          color: Color(0xff00ff00),
          fontWeight: FontWeight.bold,
          letterSpacing: 4.0,
          wordSpacing: 10.0,
          decoration: TextDecoration.underline,
          backgroundColor: Colors.white24,
          shadows: [
            Shadow(
              color: Colors.red,
              blurRadius: 10.0,
              offset: Offset(10.0, 10.0),
            )
          ]),
    );
  }
}
