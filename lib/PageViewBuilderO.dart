import 'package:flutter/material.dart';

class PageViewbuilderO extends StatefulWidget {
  const PageViewbuilderO({Key key}) : super(key: key);

  @override
  _PageViewbuilderOState createState() => _PageViewbuilderOState();
}

class _PageViewbuilderOState extends State<PageViewbuilderO> {
  int selectedIndex = 0;
  PageController pc;
  @override
  void initState() {
    // TODO: implement initState
    pc = new PageController(
      initialPage: 1,
      // viewportFraction: 0.5
    );
    super.initState();
  }

  List pages = [
    Container(
      color: Colors.red,
      child: Text("hh"),
    ),
    Container(
      color: Colors.blue,
      child: Text("hh"),
    ),
    Container(
      color: Colors.purple,
      child: Text("hh"),
    ),
    Container(
      color: Colors.green,
      child: Text("hh"),
    ),
    Container(
      color: Colors.pink,
      child: Text("hh"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("first"),
        ),
        body: Column(
          children: [
            Container(
              height: 300,
              child: PageView.builder(
                controller: pc,
                itemBuilder: (context, i) {
                  return pages[i];
                },
                onPageChanged: (index) {
                  print(index);
                },
              ),
            ),
            RaisedButton(
              onPressed: () {
                //   pc.jumpToPage(0);
                pc.animateToPage(3,
                    duration: Duration(seconds: 2), curve: Curves.easeIn);
              },
              child: Text("hh"),
            )
          ],
        ));
  }
}
