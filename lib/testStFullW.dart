import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  var text = "How are u ";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
          child: Text("jj"),
        ));
  }
}
