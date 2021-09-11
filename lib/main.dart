import 'package:flutter/material.dart';
import 'package:flutter_abc/MoadlBottomSheetO.dart';
import 'package:flutter_abc/ScrollControllerO.dart';
import 'package:flutter_abc/SearchDelegateO.dart';
import 'package:flutter_abc/TextformFieldO.dart';

import 'FormO.dart';
import 'NavigatorO.dart';
import 'SliderO.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {"one": (context) => TextFormFieldO()},
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SearchDelegateO(),
    );
  }
}

class Test extends StatefulWidget {
  Test({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TestState();
  }
}

class TestState extends State<Test> {
  GlobalKey<ScaffoldState> scfKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scfKey,
      appBar: AppBar(
          //     bottom: TabBar(onTap: (index) {}, tabs: [
          //   Tab(
          //     child: Text("hi"),
          //     icon: Icon(Icons.date_range_sharp),
          //   ),
          //   Tab(
          //     child: Text("Two"),
          //   ),
          // ])
          ),
      body: FormO(),
      // body: TabBarView(
      //   children: [
      //     Container(
      //       color: Colors.red,
      //       child: Text("1"),
      //     ),
      //     Container(
      //       color: Colors.blue,
      //       child: Text("2"),
      //     ),
      //   ],
      // ),
    );
  }
}
