import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

class MySizedBox extends StatelessWidget {
  const MySizedBox({super.key});

  @override
  Widget build(BuildContext context) => Material(
    child: Column(
      children: <Widget>[
        SizedBox(
          width: .infinity,
          height: 15,
          child: Container(width: 999, height: 999, color: Colors.blue),
        ),
        // const SizedBox(height: 1),
        Box(height: 5, color: Colors.purple),
        // Box.gap(.infinity),
        // SizedBox.expand(child: Container(color: Colors.pink)),
      ],
    ),
  );
}
