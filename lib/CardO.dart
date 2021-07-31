import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardO extends Card {
  Widget widget;
  CardO(Widget widget) {
    this.widget = widget;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: widget,
      color: Color(0xffff0000),
      elevation: 50,
      shadowColor: Colors.red[400],
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(
            color: Colors.blueAccent,
            width: 2,
          )),
    );
  }
}
