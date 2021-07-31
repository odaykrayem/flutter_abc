import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            alignment: Alignment.center,
            // margin: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            // color: Colors.black,
            decoration: BoxDecoration(
                color: Colors.cyan,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )),
            child: Text(
              "Mr Mind",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              alignment: Alignment.center,
              width: double.infinity,
              child: Text(
                " hi everyone, we in mrmind provide technical creative solutions ",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                ),
              )),
          Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow[700],
                          ),
                          Icon(Icons.star),
                          Icon(Icons.star)
                        ],
                      ),
                      // Expanded(child: Container()),
                      // Spacer(),
                      Text(
                        "17 reviews",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Spacer(
                          flex: 1,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.restaurant,
                              color: Colors.greenAccent,
                            ),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("Feed")),
                            Text("2 - 4"),
                          ],
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.category,
                              color: Colors.greenAccent,
                            ),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("Feed")),
                            Text("2 - 4"),
                          ],
                        ),
                        Spacer(
                          flex: 2,
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.emoji_food_beverage,
                              color: Colors.greenAccent,
                            ),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Text("Feed")),
                            Text("2 - 4"),
                          ],
                        ),
                        Spacer(
                          flex: 1,
                        ),
                      ],
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
