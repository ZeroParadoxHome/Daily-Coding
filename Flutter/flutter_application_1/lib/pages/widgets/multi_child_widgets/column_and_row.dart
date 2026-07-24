import 'package:flutter/material.dart';

class ColumnAndRow extends StatelessWidget {
  const ColumnAndRow({super.key});

  @override
  Widget build(BuildContext context) => Material(
    child: Column(
      textDirection: .ltr,
      children: <Widget>[
        Column(
          mainAxisAlignment: .spaceBetween,
          mainAxisSize: .min,
          crossAxisAlignment: .stretch,
          children: <Widget>[
            Container(height: 100, color: Colors.red),
            Container(height: 100, color: Colors.green),
            Container(height: 100, color: Colors.blue),
          ],
        ),
        Column(
          verticalDirection: .up,
          spacing: 15.0,
          crossAxisAlignment: .end,
          children: <Widget>[
            const SizedBox(width: .infinity),
            Container(width: 300, height: 100, color: Colors.yellow),
            Container(width: 300, height: 100, color: Colors.pink),
          ],
        ),
        Row(
          mainAxisAlignment: .spaceEvenly,
          crossAxisAlignment: .end,
          children: <Widget>[
            Container(width: 50, height: 50, color: Colors.red),
            Container(width: 50, height: 75, color: Colors.green),
            Container(width: 50, height: 95, color: Colors.blue),
          ],
        ),
        Row(
          mainAxisAlignment: .center,
          children: <Widget>[
            Container(height: 100, width: 100, color: Colors.yellow),
            const SizedBox(width: 50),
            Container(height: 100, width: 100, color: Colors.pink),
          ],
        ),
      ],
    ),
  );
}
