import 'dart:ui';

import 'package:flutter/material.dart';

class TextFormFieldO extends StatefulWidget {
  const TextFormFieldO({Key key}) : super(key: key);

  @override
  _TextFormFieldOState createState() => _TextFormFieldOState();
}

class _TextFormFieldOState extends State<TextFormFieldO> {
  TextEditingController input = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("textFormField"),
      ),
      body: Column(
        children: [
          TextFormField(
            cursorColor: Colors.purple,
            // cursorHeight: 5,
            cursorWidth: 10,
            // initialValue: "oday",
            keyboardType: TextInputType.number,
            // maxLength: 4,
            minLines: 1,
            maxLines: 1,
            obscureText: true,
            // readOnly: true,
            style: TextStyle(
              color: Colors.cyan,
            ),
            //..change the icon in the keyboard
            textInputAction: TextInputAction.done,
            textAlign: TextAlign.end,
            controller: input,
            decoration: InputDecoration(
                hintText: "enter your name",
                hintStyle: TextStyle(
                  color: Colors.pink,
                  fontSize: 20,
                ),
                hintMaxLines: 2,
                suffixIcon: Icon(Icons.ac_unit_rounded),
                prefixIcon: Icon(Icons.ac_unit),
                // we can use one of these..
                // prefixText: "name is",
                //text doesnt disappear when writing
                prefix: Text("name is:"),
                prefixStyle: TextStyle(fontSize: 20),
                //..text rise to the top border
                labelText: "your name",
                labelStyle: TextStyle(fontSize: 20, color: Colors.red),
                //..this should be true to be able to fill with color
                filled: true,
                fillColor: Colors.red[100],
                enabled: true,
                // enabledBorder: UnderlineInputBorder(
                //   borderRadius: BorderRadius.circular(20),
                //   borderSide: BorderSide(
                //     color: Colors.red,
                //     width: 3,
                //   ),
                // )
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 3,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 3,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
                //..this applied for all cases
                // border: OutlineInputBorder(
                //   borderRadius: BorderRadius.circular(20),
                //   borderSide: BorderSide(
                //     color: Colors.red,
                //     width: 3,
                //   ),
                // ),
                // border: InputBorder.none,
                //..this icon appear before textFormField
                icon: Icon(Icons.access_alarms)),
          ),
          RaisedButton(
            onPressed: () {
              print(input.text);
              if (Navigator.of(context).canPop()) {
                Navigator.of(context).pop();
              }
            },
            child: Text("dd"),
          )
        ],
      ),
    );
  }
}
