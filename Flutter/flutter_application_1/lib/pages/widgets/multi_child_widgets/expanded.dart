import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: .spaceBetween,
          crossAxisAlignment: .stretch,
          children: <Widget>[
            Container(width: 50, color: Colors.red),
            Expanded(flex: 3, child: Container(width: 50, color: Colors.green)),
            SizedBox(width: 5.0),
            Container(width: 50, color: Colors.blue),
            SizedBox(width: 5.0),
            Expanded(
              flex: 2,
              child: Container(width: 50, color: Colors.yellow),
            ),
            Container(width: 50, color: Colors.pink),
          ],
        ),
      ),
    ),
  );
}
