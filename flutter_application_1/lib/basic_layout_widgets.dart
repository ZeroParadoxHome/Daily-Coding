import 'package:flutter/material.dart';
import 'pages/widgets/single_child_widgets/container.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(children: <Widget>[const MyCustomContainer()]),
        ),
      ),
    ),
  );
}
