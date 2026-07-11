import 'package:flutter/material.dart';
import 'pages/widgets/single_child_widgets/constrainedbox.dart';
import 'pages/widgets/single_child_widgets/container.dart';
import 'pages/widgets/single_child_widgets/fractionallysizedbox.dart';
import 'pages/widgets/single_child_widgets/limitedbox.dart';
import 'pages/widgets/single_child_widgets/sizedbox.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    // showSemanticsDebugger: true,
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              const MyCustomContainer(),
              const MyConstrainedBox(),
              const MySizedBox(),
              const MyCustomFractionallySizedBox(),
              const MyLimitedBox(),
            ],
          ),
        ),
      ),
    ),
  );
}
