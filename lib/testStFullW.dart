import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  bool usa = false;
  bool sy = false;
  bool sa = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.all(10),
              color: Colors.indigo,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Choose Country",
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                    Row(
                      children: [
                        Text("USA"),
                        Checkbox(
                            activeColor: Colors.red,
                            value: usa,
                            onChanged: (val) {
                              setState(() {
                                usa = val;
                              });
                            }),
                        Text("Saudia"),
                        Checkbox(
                            value: sa,
                            onChanged: (val) {
                              setState(() {
                                sa = val;
                              });
                            }),
                        Text("Syria"),
                        Checkbox(
                            value: sy,
                            onChanged: (val) {
                              setState(() {
                                sy = val;
                              });
                            }),
                      ],
                    )
                  ],
                ),
              )),
        ));
  }
}
