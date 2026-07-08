import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {
  const MyCustomContainer({super.key});

  @override
  Widget build(BuildContext context) => Material(
    child: Row(
      children: <Widget>[
        Container(
          // color: Colors.amber[900],
          width: 300,
          height: 30,
          alignment: .centerLeft,
          decoration: BoxDecoration(color: Colors.amber[900]),
          transform: .rotationZ(0.1),
          padding: const .only(left: 50),
          margin: const .symmetric(horizontal: 15),
          child: const Text("ZeroParadoxHome"),
        ),
        Container(
          color: Colors.red,
          width: 50,
          height: 30,
          alignment: .center,
          padding: .only(right: 17),
          child: const Text("Flutter", softWrap: false, overflow: .ellipsis),
        ),
      ],
    ),
  );
}
