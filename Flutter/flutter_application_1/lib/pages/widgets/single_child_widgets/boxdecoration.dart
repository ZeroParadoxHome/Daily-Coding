import 'package:flutter/material.dart';

class MyBoxDecoration extends StatelessWidget {
  const MyBoxDecoration({super.key});

  @override
  Widget build(BuildContext context) => Material(
    child: Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              // color: Colors.blueGrey,
              width: 150,
              height: 150,
              margin: .fromLTRB(5, 15, 101, 15),
              decoration: BoxDecoration(
                border: .all(
                  color: Colors.black,
                  width: 10.0,
                  // strokeAlign: -1,
                ),
                borderRadius: .circular(30.0),
                boxShadow: <BoxShadow>[
                  const BoxShadow(
                    color: Colors.grey,
                    offset: .new(13, 13),
                    spreadRadius: 3.0,
                    blurRadius: 5.0,
                    blurStyle: .normal,
                  ),
                ],
              ),
              alignment: .center,
              child: Text(
                "My Text Widget",
                style: TextStyle(fontSize: 15.0, fontWeight: .bold),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: .fromLTRB(0, 15, 0, 15),
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.pink, width: 5.0),
                  right: BorderSide(color: Colors.orange, width: 5.0),
                ),
                gradient: RadialGradient(
                  colors: <Color>[Colors.limeAccent, Colors.indigo],
                  radius: 0.75,
                ),
              ),
              alignment: .center,
              child: Text(
                "My Text Widget",
                style: TextStyle(fontSize: 15.0, fontWeight: .bold),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              margin: .fromLTRB(5, 15, 101, 15),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                  ),
                ),
                borderRadius: .directional(
                  topStart: .circular(50),
                  bottomEnd: .elliptical(100, 100),
                ),
              ),
              alignment: .center,
              child: Text(
                "My Text Widget",
                style: TextStyle(fontSize: 15.0, fontWeight: .bold),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              margin: .fromLTRB(0, 15, 0, 15),
              decoration: BoxDecoration(
                shape: .circle,
                gradient: LinearGradient(
                  colors: <Color>[Colors.yellowAccent, Colors.green],
                ),
              ),
              alignment: .center,
              child: Text(
                "My Text Widget",
                style: TextStyle(fontSize: 15.0, fontWeight: .bold),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
