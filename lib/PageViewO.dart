import 'package:flutter/material.dart';

class PageViewO extends StatefulWidget {
  const PageViewO({Key key}) : super(key: key);

  @override
  _PageViewOState createState() => _PageViewOState();
}

class _PageViewOState extends State<PageViewO> {
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
              child: PageView(
                // reverse: true,
                // scrollDirection: Axis.vertical,
                children: [
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
                ],
                onPageChanged: (index) {
                  print(index);
                },
                controller: pc,
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
