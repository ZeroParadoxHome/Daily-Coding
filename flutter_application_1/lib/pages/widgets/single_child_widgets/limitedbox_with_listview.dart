import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) => LimitedBox(
            maxHeight: 100,
            child: Container(
              color: randomColor(),
              width: .infinity,
              height: 150,
              child: const Text("ZeroParadoxHome"),
            ),
          ),
        ),
      ),
    ),
  );
  static final Random _random = .new();
  static Color randomColor() => .fromARGB(
    255,
    _random.nextInt(255),
    _random.nextInt(255),
    _random.nextInt(255),
  );
}
