import 'package:flutter/material.dart';

class MyConstrainedBox extends StatelessWidget {
  const MyConstrainedBox({super.key});

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 85),
        child: const Text("\n\n\nZeroParadoxHomeHomeHome"),
      ),
      ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 150),
        child: ElevatedButton(
          onPressed: () {},
          child: const Text("Click Me Please!"),
        ),
      ),
      ConstrainedBox(
        constraints: .loose(const Size(.infinity, 25)),
        child: const Text(
          "Deserunt et Lorem adipisicing tempor commodo quis proident est cillum do voluptate anim non.",
          maxLines: 1,
          softWrap: false,
          overflow: .ellipsis,
        ),
      ),
    ],
  );
}
