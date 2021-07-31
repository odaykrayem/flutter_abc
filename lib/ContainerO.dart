import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContainerO extends Container {
  Widget widget;
  ContainerO(Widget widget) {
    this.widget = widget;
  }

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      child: widget,
      width: double.infinity,
      height: 100,
      // alignment: Alignment.center,
      decoration: BoxDecoration(
        // we cant use color & decoration together
        // color: Colors.cyan[400],
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 10,
            spreadRadius: 5,
            offset: Offset(-10, 10),
          )
        ],
        image: DecorationImage(
          fit: BoxFit.contain,
          repeat: ImageRepeat.repeatX,
          image: AssetImage("images/img.jpg"),
        ),
        border: Border.all(
          color: Colors.blue[900],
          width: 10,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomRight: Radius.circular(20)),

        // borderRadius: BorderRadius.horizontal(
        //   left: Radius.circular(30),
        //   right: Radius.circular(30)
        // )

        // border: Border(
        //   left: BorderSide(
        //     color: Colors.blue[900],
        //     //border width will be taken from container width,,,
        //     width: 10,
        //   ),
        //   top: BorderSide(
        //     color: Colors.blue[600],
        //     width: 10,
        //   ),
        //   right: BorderSide(
        //     color: Colors.blue[900],
        //     //border width will be taken from container width,,,
        //     width: 10,
        //   ),
        //   bottom: BorderSide(
        //     color: Colors.blue[600],
        //     //border width will be taken from container width,,,
        //     width: 10,
        //   ),
        // ),
      ),
    );
  }
}
