import 'package:flutter/material.dart';

class MyFittedBox extends StatelessWidget {
  const MyFittedBox({super.key});

  @override
  Widget build(BuildContext context) => Material(
    child: Container(
      width: 350,
      height: 50,
      color: Colors.indigoAccent,
      child: FittedBox(
        alignment: .center,
        clipBehavior: .antiAlias,
        fit: .cover,
        child: Image.network(
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg",
        ),
      ),
    ),
  );
}
