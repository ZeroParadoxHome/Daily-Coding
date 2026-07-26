import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .stretch,
            children: <Widget>[
              Container(height: 300, color: Colors.red),
              Container(height: 300, color: Colors.green),
              Container(
                height: 300,
                color: Colors.blue,
                child: SingleChildScrollView(
                  reverse: true,
                  child: const Text(
                    "Non ad excepteur esse eiusmod aute mollit dolore deserunt velit mollit. Excepteur exercitation eu Lorem velit officia sit. Duis sit proident minim ex cillum reprehenderit exercitation do officia amet incididunt. Adipisicing amet et in ea ea mollit adipisicing cupidatat incididunt Lorem dolor irure aliquip. Anim enim ad ad cillum veniam do mollit magna. Ipsum commodo nulla et adipisicing commodo amet ipsum quis quis mollit. Laborum nulla amet ad deserunt labore pariatur. Proident veniam cupidatat ad elit non consequat aliqua est do eiusmod non. Commodo officia esse Lorem cupidatat. Ipsum ullamco exercitation aute laboris. In ea do minim ut id elit laborum exercitation officia elit consequat. Eiusmod nulla excepteur minim reprehenderit et in aute minim amet sint officia minim ea veniam. Veniam sit nisi qui labore. Aute cupidatat nostrud reprehenderit officia sint in ipsum ut sint consequat et nisi. Do reprehenderit incididunt commodo occaecat ut mollit ipsum esse tempor tempor tempor. Ad aliquip sunt qui labore exercitation do amet culpa. Magna laborum excepteur est do esse nisi commodo magna id amet laborum. Culpa voluptate amet tempor minim eu pariatur duis. Ut qui id adipisicing laborum sit aute ut incididunt laboris. Ea fugiat enim eiusmod magna Lorem duis esse laborum voluptate magna ea sit. Proident cupidatat deserunt elit aute sunt fugiat enim sunt enim Lorem est Lorem excepteur. Deserunt irure commodo cupidatat minim. Proident et in aliqua ex voluptate est adipisicing ex officia dolore voluptate quis magna.",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
