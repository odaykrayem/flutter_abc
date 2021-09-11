import 'package:flutter/material.dart';

class ModalBottomSheetO extends StatefulWidget {
  const ModalBottomSheetO({Key key}) : super(key: key);

  @override
  _ModalBottomSheetOState createState() => _ModalBottomSheetOState();
}

class _ModalBottomSheetOState extends State<ModalBottomSheetO> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ElevatedButton(
            child: Text("show"),
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Container(
                      child: Text("Modal b sheet"),
                      color: Colors.cyan,
                      height: 200,
                    );
                  });
            }),
      ),
    );
  }
}
