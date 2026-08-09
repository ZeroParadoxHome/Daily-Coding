import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(body: SafeArea(child: const MyDropdownButton())),
  );
}

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({super.key});

  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  static const List<String> _months = <String>[
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December",
  ];
  String currentSelectedItem = _months[0];
  @override
  Widget build(BuildContext context) => Center(
    child: DropdownButton<String>(
      alignment: .center,
      barrierDismissible: false,
      borderRadius: .circular(50.0),
      dropdownColor: Colors.deepOrange,
      elevation: 12,
      icon: const Icon(
        Icons.arrow_drop_down_circle_rounded,
        color: Colors.transparent,
      ),
      iconSize: 25.0,
      iconEnabledColor: Colors.red,
      isDense: true,
      isExpanded: true,
      itemHeight: 50.0,
      menuMaxHeight: 150.0,
      menuWidth: .infinity,
      padding: .all(25.0),
      style: TextStyle(color: Colors.blue[900], fontWeight: .bold),
      underline: ColoredBox(color: Colors.transparent),
      items: _months
          .map(
            (String e) => DropdownMenuItem<String>(
              value: e,
              alignment: .center,
              child: Text(e),
            ),
          )
          .toList(),
      onChanged: (String? newValue) =>
          setState(() => currentSelectedItem = newValue!),
      value: currentSelectedItem,
    ),
  );
}
