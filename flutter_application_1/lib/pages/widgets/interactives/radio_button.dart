import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(body: SafeArea(child: const MyRadioButton())),
  );
}

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({super.key});

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  int? radioGroupValue;
  @override
  Widget build(BuildContext context) => RadioGroup<int>(
    groupValue: radioGroupValue,
    onChanged: (int? newValue) => setState(() => radioGroupValue = newValue),
    child: Center(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: .center,
            children: <Widget>[
              Radio<int>(value: 1),
              const Text("Male"),
              Radio<int>(value: 2),
              const Text("Female"),
            ],
          ),
          RadioListTile<int>(
            value: 3,
            title: const Text("Other"),
            controlAffinity: .trailing,
            toggleable: true,
          ),
          Text("Selected: ${radioGroupValue ?? "None"}"),
        ],
      ),
    ),
  );
}
