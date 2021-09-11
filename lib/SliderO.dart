import 'package:flutter/material.dart';

class SliderO extends StatefulWidget {
  const SliderO({Key key}) : super(key: key);

  @override
  _SliderOState createState() => _SliderOState();
}

class _SliderOState extends State<SliderO> {
  var _valSlider = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Slider(
            inactiveColor: Colors.cyan,
            activeColor: Colors.pink,
            min: 0,
            max: 100,
            value: _valSlider,
            onChanged: (val) {
              setState(() {
                _valSlider = val;
              });
            },
          ),
        ],
      ),
    );
  }
}
