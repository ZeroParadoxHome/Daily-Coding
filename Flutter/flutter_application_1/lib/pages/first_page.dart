import 'dart:math';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) => Material(
    child: SafeArea(child: Center(child: Text(randomNames()))),
  );
  static const List<String> names = <String>[
    "Flutter",
    "World",
    "ZeroParadoxHome",
  ];
  static final Random _random = Random();
  String randomNames() => "Hello ${names[_random.nextInt(3)]}";
}
