import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

typedef SGDWFCAC = SliverGridDelegateWithFixedCrossAxisCount;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: GridView.builder(
          itemCount: items.length,
          reverse: true,
          gridDelegate: const SGDWFCAC(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) =>
              _containerGenerator(text: "Box ${index + 1}"),
        ),
      ),
    ),
  );
  static final List<int> items = List<int>.generate(100, (int i) => i);
  static final Random _random = .new();
  static Color randomColor() => .fromARGB(
    255,
    _random.nextInt(255),
    _random.nextInt(255),
    _random.nextInt(255),
  );
  static Container _containerGenerator({required String text}) => Container(
    alignment: .center,
    color: randomColor(),
    child: Text(text, style: TextStyle(fontSize: 15, fontWeight: .bold)),
  );
}
