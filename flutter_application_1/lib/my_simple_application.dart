import 'package:flutter/material.dart';

void main() => runApp(
  const MaterialApp(
    home: Center(
      child: Text(
        "Hello World",
        style: TextStyle(color: Colors.red, backgroundColor: Colors.white),
        textDirection: .ltr,
      ),
    ),
  ),
);
