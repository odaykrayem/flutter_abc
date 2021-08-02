import 'package:flutter/material.dart';
import 'package:flutter_abc/testStFullWListViewBuilder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Test(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blueAccent,
          child: Icon(Icons.access_alarms_outlined),
        ),
        body: Center(
          child: Column(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.cyanAccent,
                child: Text("hello"),
                //make any widget act like a button
              ),
            ],
          ),
        ));
  }
}
