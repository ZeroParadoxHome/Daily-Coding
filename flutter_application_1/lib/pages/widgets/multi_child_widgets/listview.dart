import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: .horizontal,
          padding: const .all(15),
          // physics: const NeverScrollableScrollPhysics(),
          scrollCacheExtent: .pixels(300.0),
          children: <Widget>[
            _containerGenerator(width: 300, height: 300, text: "Text 1"),
            _containerGenerator(width: 300, height: 300, text: "Text 2"),
            _containerGenerator(width: 300, height: 300, text: "Text 3"),
            _containerGenerator(width: 300, height: 300, text: "Text 4"),
            _containerGenerator(width: 300, height: 300, text: "Text 5"),
          ],
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
  static Container _containerGenerator({
    required double width,
    required double height,
    required String text,
  }) => Container(
    width: width,
    height: height,
    alignment: .center,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: <Color>[randomColor(), randomColor(), randomColor()],
      ),
    ),
    child: Text(text, style: TextStyle(fontSize: 15, fontWeight: .bold)),
  );
}
