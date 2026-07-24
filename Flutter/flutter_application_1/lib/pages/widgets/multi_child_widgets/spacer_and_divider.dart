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
          // verticalDirection: .up,
          children: <Widget>[
            Container(height: 125, color: Colors.red),
            const Spacer(flex: 1),
            Container(height: 125, color: Colors.green),
            const Spacer(flex: 3),
            Container(height: 125, color: Colors.blue),
            const Divider(
              color: Colors.grey,
              indent: 50,
              endIndent: 50,
              height: 30,
              thickness: 5,
            ),
            Container(height: 125, color: Colors.yellow),
            const Divider(
              color: Colors.black,
              indent: 30,
              endIndent: 30,
              height: 50,
              thickness: 15,
              radius: .all(.circular(10)),
            ),
            Container(height: 125, color: Colors.pink),
          ],
        ),
      ),
    ),
  );
}
