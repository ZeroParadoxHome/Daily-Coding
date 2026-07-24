import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Column(
          spacing: 15,
          children: <Widget>[
            Expanded(
              child: Wrap(
                direction: .vertical,
                alignment: .center,
                spacing: 5.0,
                runSpacing: 5.0,
                children: <Widget>[
                  Container(width: 125, height: 75, color: Colors.red),
                  Container(width: 125, height: 75, color: Colors.green),
                  Container(width: 125, height: 75, color: Colors.blue),
                  Container(width: 125, height: 75, color: Colors.purple),
                  Container(width: 125, height: 75, color: Colors.deepPurple),
                  Container(width: 125, height: 75, color: Colors.red),
                  Container(width: 125, height: 75, color: Colors.green),
                  Container(width: 125, height: 75, color: Colors.blue),
                  Container(width: 125, height: 75, color: Colors.purple),
                  Container(width: 125, height: 75, color: Colors.deepPurple),
                  Container(width: 125, height: 75, color: Colors.red),
                  Container(width: 125, height: 75, color: Colors.green),
                  Container(width: 125, height: 75, color: Colors.blue),
                  Container(width: 125, height: 75, color: Colors.purple),
                  Container(width: 125, height: 75, color: Colors.deepPurple),
                ],
              ),
            ),
            Wrap(
              direction: .horizontal,
              crossAxisAlignment: .center,
              spacing: 5.0,
              runSpacing: 5.0,
              verticalDirection: .up,
              clipBehavior: .antiAlias,
              children: <Widget>[
                Container(width: 125, height: 100, color: Colors.red),
                Container(width: 125, height: 75, color: Colors.green),
                Container(width: 125, height: 75, color: Colors.blue),
                Container(width: 125, height: 75, color: Colors.purple),
                Container(width: 125, height: 75, color: Colors.deepPurple),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
