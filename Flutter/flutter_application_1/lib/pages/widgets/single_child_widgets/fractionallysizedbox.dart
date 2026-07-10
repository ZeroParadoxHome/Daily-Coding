import 'package:flutter/material.dart';

class MyCustomFractionallySizedBox extends StatelessWidget {
  const MyCustomFractionallySizedBox({super.key});

  @override
  Widget build(BuildContext context) => SizedBox(
    height: 15,
    child: FractionallySizedBox(
      widthFactor: 0.5,
      // heightFactor: 0.3,
      child: Container(color: Colors.green),
    ),
  );
}
