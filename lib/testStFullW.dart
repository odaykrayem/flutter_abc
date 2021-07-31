import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  var selectedCountry;
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
            child: DropdownButton(
              icon: Icon(
                Icons.arrow_circle_down_rounded,
                color: Colors.purple,
                size: 30,
              ),
              // iconSize: 40,
              // iconEnabledColor: Colors.red,
              underline: Divider(
                color: Colors.indigo,
                thickness: 1,
              ),
              // isExpanded: true,
              dropdownColor: Colors.indigo[200],
              hint: Text("Choose country"),
              items: [
                "USA",
                "Canada",
              ]
                  .map((e) => DropdownMenuItem(
                        child: Text("$e"),
                        value: e,
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  selectedCountry = val;
                });
              },
              value: selectedCountry,
            ),
          ),
        ));
  }
}
