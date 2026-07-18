import 'package:flutter/material.dart';

void main(List<String> args) => runApp(MyAspectRatio());

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.grey,
              child: AspectRatio(
                aspectRatio: 4.0 / 3.0,
                child: Image.network(
                  "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
                  fit: .cover,
                ),
              ),
            ),
            Container(
              width: .infinity,
              height: 200,
              color: Colors.blueGrey,
              child: Row(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 9 / 16,
                    child: Container(color: Colors.red),
                  ),
                  AspectRatio(
                    aspectRatio: 4 / 3,
                    child: Container(color: Colors.green),
                  ),
                  // AspectRatio(
                  //   aspectRatio: 16 / 9,
                  //   child: Container(color: Colors.yellow),
                  // ),
                  // AspectRatio(
                  //   aspectRatio: 21 / 9,
                  //   child: Container(color: Colors.teal),
                  // ),
                  // AspectRatio(
                  //   aspectRatio: 16 / 10,
                  //   child: Container(color: Colors.pink),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
