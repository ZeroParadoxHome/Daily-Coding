import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: GridView.count(
          crossAxisCount: 5,
          scrollDirection: .horizontal,
          childAspectRatio: 1.5,
          mainAxisSpacing: 3.0,
          mainAxisExtent: 150.0,
          crossAxisSpacing: 3.0,
          padding: const .all(5),
          scrollCacheExtent: .pixels(300.0),
          // physics: const NeverScrollableScrollPhysics(),
          children: List<Widget>.generate(
            100,
            (int index) => _containerGenerator(text: "Box ${index + 1}"),
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
  static Container _containerGenerator({required String text}) => Container(
    alignment: .center,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: <Color>[randomColor(), randomColor(), randomColor()],
      ),
    ),
    child: Text(text, style: TextStyle(fontSize: 15, fontWeight: .bold)),
  );
}
