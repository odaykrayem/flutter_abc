import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  Test({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  GlobalKey<ScaffoldState> scfKey = new GlobalKey<ScaffoldState>();
  List mobile = [
    {"name": "s20 ultra", "screen": "4.3", "cpu": "8 core"},
    {"name": "s21 ultra", "screen": "4.3", "cpu": "8 core"},
    {"name": "s22 ultra", "screen": "4.3", "cpu": "8 core"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scfKey,
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
          child: ListView.builder(
              itemCount: mobile.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text("${mobile[i]['name']}"),
                  subtitle: Text("${mobile[i]['cpu']}"),
                  trailing: Text("${mobile[i]['screen']}"),
                );
              })),
    );
  }
}
