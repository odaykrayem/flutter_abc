import 'package:flutter/material.dart';
import 'package:flutter_abc/FormO.dart';
import 'package:flutter_abc/TextformFieldO.dart';

class NavO extends StatelessWidget {
  const NavO({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ElevatedButton(
          child: Text("jj"),
          onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            //   return TextFormFieldO();

            // with routes::
            // Navigator.of(context).pushNamed("one");
            //for use in log in page for example
            //if we have signup on multiple phases we dont use replacement
            Navigator.of(context).pushReplacementNamed("one");
          },
        ),
      ),
    );
  }
}

//Routes:: in MaterialApp
/**
 * routes: {
        "one" : (context)=>  TextFormFieldO()
      },
 */

//POP::

/**
 * note : if we pop from the first page it exits the app 
 *  if (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
    }
 */