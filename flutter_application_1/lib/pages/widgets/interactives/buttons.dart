import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(body: SafeArea(child: const MyButtonWidgets())),
  );
}

class MyButtonWidgets extends StatefulWidget {
  const MyButtonWidgets({super.key});

  @override
  State<MyButtonWidgets> createState() => _MyButtonWidgetsState();
}

class _MyButtonWidgetsState extends State<MyButtonWidgets> {
  @override
  Widget build(BuildContext context) => Center(
    child: Column(
      spacing: 5.0,
      children: <Widget>[
        TextButton(
          style: TextButton.styleFrom(
            alignment: .center,
            animationDuration: const Duration(days: 1),
            backgroundColor: Colors.lightBlueAccent[100],
            fixedSize: Size(150, 50),
            foregroundColor: Colors.black,
            minimumSize: const Size(90, 30),
            maximumSize: const Size(250, 100),
            overlayColor: Colors.yellow,
          ),
          onPressed: () {},
          child: const Text("My Text Button"),
        ),
        TextButton.icon(
          icon: const Icon(Icons.wifi),
          iconAlignment: .end,
          style: TextButton.styleFrom(iconColor: Colors.green, iconSize: 25.0),
          onPressed: () {},
          label: const Text("Text Icon Button"),
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.red, width: 3.0, strokeAlign: 1.5),
          ),
          onPressed: () {},
          child: const Text("My Outlined Button"),
        ),
        OutlinedButton.icon(
          icon: const Icon(Icons.whatshot_rounded),
          onPressed: () {},
          label: const Text("Outlined Icon Button"),
        ),
        IconButton(
          color: Colors.yellow[700],
          constraints: BoxConstraints(
            minWidth: 30.0,
            minHeight: 30.0,
            maxWidth: 50.0,
            maxHeight: 50.0,
          ),
          highlightColor: Colors.pink[900],
          isSelected: false,
          selectedIcon: const Icon(Icons.email_rounded),
          tooltip: "This is @",
          onPressed: () {},
          icon: const Icon(Icons.alternate_email_rounded),
        ),
        IconButton.filled(
          onPressed: () {},
          icon: const Icon(Icons.settings_rounded),
        ),
        IconButton.outlined(onPressed: () {}, icon: const Icon(Icons.clear)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 9.0,
            shadowColor: Colors.purple,
            shape: BeveledRectangleBorder(
              borderRadius: .horizontal(right: .circular(15.0)),
            ),
          ),
          onPressed: () {},
          child: const Text("My Elevated Button"),
        ),
      ],
    ),
  );
}
