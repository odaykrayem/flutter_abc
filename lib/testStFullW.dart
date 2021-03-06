import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  Test({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  String country;
  bool notify = false;
  GlobalKey<ScaffoldState> scfKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scfKey,
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, i) {
                return Container(
                  child: Text("$i"),
                );
              })),
    );
  }
}
