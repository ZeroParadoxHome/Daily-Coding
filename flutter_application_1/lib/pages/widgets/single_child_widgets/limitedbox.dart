import 'package:flutter/material.dart';

class MyLimitedBox extends StatelessWidget {
  const MyLimitedBox({super.key});

  @override
  Widget build(BuildContext context) => Material(
    child: UnconstrainedBox(
      child: LimitedBox(
        maxWidth: 250,
        child: Container(
          width: .infinity,
          height: 50,
          color: Colors.brown,
          margin: .only(top: 5),
        ),
      ),
    ),
  );
}
