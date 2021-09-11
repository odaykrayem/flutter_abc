import 'package:flutter/material.dart';

class BottomNavigationO extends StatefulWidget {
  const BottomNavigationO({Key key}) : super(key: key);

  @override
  _BottomNavigationOState createState() => _BottomNavigationOState();
}

class _BottomNavigationOState extends State<BottomNavigationO> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.cyan,
        currentIndex: selectedIndex,
        // selectedItemColor: Colors.red,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          fontSize: 20,
          //color does not work here
          color: Colors.black,
        ),
        unselectedFontSize: 13,
        iconSize: 15,
        // selectedFontSize: 18,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "Widget"),
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: "w"),
        ],
        onTap: (index) {
          print("in");
          print(index);

          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
