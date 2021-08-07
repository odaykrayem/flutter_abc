import 'package:flutter/material.dart';
import 'package:flutter_abc/designOne.dart';
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
      home: MyHomePage(title: "first"),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  GlobalKey<ScaffoldState> scfKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scfKey,
        appBar: AppBar(
          elevation: 15,
          shadowColor: Colors.red[100],
          backgroundColor: Colors.red[100],
          //colors of icons in the statusbar default is dark
          brightness: Brightness.light,
          actions: [
            IconButton(icon: Icon(Icons.exit_to_app), onPressed: () {}),
            IconButton(icon: Icon(Icons.alarm_add), onPressed: () {})
          ],
          title: Text(title),
          centerTitle: true,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Oday"),
                accountEmail: Text("Oday@gmail.com"),
                arrowColor: Colors.amberAccent,
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.pink,
                ),
              ),
              ListTile(
                title: Text("Home Page"),
                leading: Icon(Icons.home),
              )
            ],
          ),
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
                child: ElevatedButton(
                    child: Text("jj"),
                    onPressed: () {
                      scfKey.currentState.openDrawer();
                    }),
                //make any widget act like a button
              ),
            ],
          ),
        ));
  }
}
