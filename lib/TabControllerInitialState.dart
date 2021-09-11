import 'package:flutter/material.dart';

class TabControllerO extends StatefulWidget {
  TabControllerO({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TabControllerOState();
  }
}

class TabControllerOState extends State<TabControllerO>
    with SingleTickerProviderStateMixin {
  TabController myController;

  @override
  void initState() {
    myController = new TabController(length: 2, vsync: this, initialIndex: 1);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          bottom: TabBar(controller: myController, onTap: (index) {}, tabs: [
        Tab(
          child: Text("hi"),
          icon: Icon(Icons.date_range_sharp),
        ),
        Tab(
          child: Text("Two"),
        ),
      ])),
      drawer: Drawer(),
      body: TabBarView(
        controller: myController,
        children: [
          Container(
            color: Colors.red,
            child: Text("1"),
          ),
          Container(
            color: Colors.blue,
            child: Text("2"),
          ),
        ],
      ),
    );
  }
}
