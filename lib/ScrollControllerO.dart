import 'package:flutter/material.dart';

class ScrollControllerO extends StatefulWidget {
  const ScrollControllerO({Key key}) : super(key: key);

  @override
  _ScrollControllerOState createState() => _ScrollControllerOState();
}

class _ScrollControllerOState extends State<ScrollControllerO> {
  ScrollController _sController;
  @override
  void initState() {
    _sController = new ScrollController();
    _sController.addListener(() {
      print(_sController.offset);
      print(_sController.position.maxScrollExtent);
      print(_sController.position.minScrollExtent);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        controller: _sController,
        children: [
          ElevatedButton(
            onPressed: () {
              // _sController.jumpTo(_sController.position.maxScrollExtent);
              _sController.animateTo(
                1000,
                duration: Duration(seconds: 1),
                curve: Curves.easeIn,
              );
            },
            child: Text(
              "jumptoEnd",
            ),
          ),
          ...List.generate(
              20,
              (index) => Container(
                    width: double.infinity,
                    height: 100,
                    child: Text("Container: $index"),
                    color: Colors.cyan,
                    margin: EdgeInsets.all(3),
                  ))
        ],
      ),
    );
  }
}
