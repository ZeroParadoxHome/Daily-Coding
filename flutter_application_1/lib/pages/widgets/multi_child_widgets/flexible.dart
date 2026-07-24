import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: .stretch,
          mainAxisSize: .min,
          spacing: 1,
          verticalDirection: randomVerticalDirection,
          children: <Widget>[
            Flexible(
              flex: _random.nextInt(10),
              child: Container(
                color: randomColor(),
                alignment: .center,
                child: const Text(
                  "Just for fun",
                  style: TextStyle(fontSize: 15, fontWeight: .bold),
                ),
              ),
            ),
            Flexible(
              flex: _random.nextInt(10),
              child: Container(
                color: randomColor(),
                alignment: .center,
                child: const Text(
                  "Just for fun",
                  style: TextStyle(fontSize: 15, fontWeight: .bold),
                ),
              ),
            ),
            Flexible(
              flex: _random.nextInt(10),
              child: Container(
                color: randomColor(),
                alignment: .center,
                child: const Text(
                  "Just for fun",
                  style: TextStyle(fontSize: 15, fontWeight: .bold),
                ),
              ),
            ),
            Flexible(
              flex: _random.nextInt(10),
              child: Container(
                color: randomColor(),
                alignment: .center,
                child: const Text(
                  "Just for fun",
                  style: TextStyle(fontSize: 15, fontWeight: .bold),
                ),
              ),
            ),
            Flexible(
              flex: _random.nextInt(10),
              child: Container(
                color: randomColor(),
                alignment: .center,
                child: const Text(
                  "Just for fun",
                  style: TextStyle(fontSize: 15, fontWeight: .bold),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
  static final Random _random = .new();
  static const List<VerticalDirection> verticalDirections = <VerticalDirection>[
    .down,
    .up,
  ];
  static VerticalDirection get randomVerticalDirection =>
      verticalDirections[_random.nextInt(1)];
  static Color randomColor() => .fromARGB(
    255,
    _random.nextInt(255),
    _random.nextInt(255),
    _random.nextInt(255),
  );
}
