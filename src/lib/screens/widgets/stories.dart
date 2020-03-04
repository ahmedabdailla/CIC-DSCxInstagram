import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 120.0,
      child: new ListView(
        scrollDirection: Axis.horizontal,
        children: new List.generate(20, (int index) {
          return new Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      new Container(
                          child: new Container(
                              padding: EdgeInsets.all(2),
                              decoration: new BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                              ),
                              child: new CircleAvatar(
                                backgroundImage:
                                    new AssetImage('lib/assets/CIC.png'),
                              )),
                          width: 70,
                          height: 70,
                          padding: const EdgeInsets.all(3.0), // borde width
                          decoration: new BoxDecoration(
                            gradient: SweepGradient(colors: [
                              Colors.red,
                              Colors.yellow,
                              Colors.pink,
                              Colors.pinkAccent
                            ]),
                            shape: BoxShape.circle,
                          ))
                    ],
                  ),
                  new Text("Account $index")
                ],
              ));
        }),
      ),
    );
  }
}
