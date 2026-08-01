import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) =>
      MaterialApp(home: const MyStatefulWidget(title: "Home"));
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({required this.title, super.key});

  final String title;

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool status = true;
  int _counter = 0;

  void _incrementCounter() => setState(() => _counter++);
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.grey[900],
    appBar: AppBar(
      title: Text(widget.title, style: TextStyle(color: Colors.white)),
      backgroundColor: Colors.blue[900],
    ),
    body: SafeArea(
      child: Column(
        mainAxisAlignment: .center,
        children: <Widget>[
          Expanded(
            child: Center(
              child: Text(
                "Hello ${status ? "ZeroParadox" : "ZeroParadoxHome"}",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: .bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () => setState(() => status = !status),
            autofocus: true,
            color: Colors.blue[900],
            elevation: 5.0,
            shape: RoundedRectangleBorder(borderRadius: .circular(15.0)),
            child: const Text(
              "CLICK ME!",
              style: TextStyle(color: Colors.white),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: .center,
              children: <Widget>[
                const Text(
                  "You have pushed the button this many times:",
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                Text(
                  "$_counter",
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: .bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: _incrementCounter,
      backgroundColor: Colors.blue[900],
      tooltip: "Increment",
      child: const Icon(Icons.add, color: Colors.white),
    ),
  );
}
