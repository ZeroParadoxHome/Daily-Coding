import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: ListView.separated(
          primary: true,
          reverse: true,
          itemCount: europeanCountries.length,
          itemBuilder: (BuildContext context, int index) => _containerGenerator(
            width: 150,
            height: 150,
            text: reversedEuropeanCountries[index],
          ),
          separatorBuilder: (BuildContext context, int index) =>
              const Divider(),
        ),
      ),
    ),
  );
  static const List<String> europeanCountries = <String>[
    "Albania",
    "Andorra",
    "Armenia",
    "Austria",
    "Azerbaijan",
    "Belarus",
    "Belgium",
    "Bosnia and Herzegovina",
    "Bulgaria",
    "Croatia",
    "Cyprus",
    "Czechia",
    "Denmark",
    "Estonia",
    "Finland",
    "France",
    "Georgia",
    "Germany",
    "Greece",
    "Hungary",
    "Iceland",
    "Ireland",
    "Italy",
    "Kazakhstan",
    "Kosovo",
    "Latvia",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Malta",
    "Moldova",
    "Monaco",
    "Montenegro",
    "Netherlands",
    "North Macedonia",
    "Norway",
    "Poland",
    "Portugal",
    "Romania",
    "Russia",
    "San Marino",
    "Serbia",
    "Slovakia",
    "Slovenia",
    "Spain",
    "Sweden",
    "Switzerland",
    "Turkey",
    "Ukraine",
    "United Kingdom",
    "Vatican City",
  ];
  static final List<String> reversedEuropeanCountries = .of(
    europeanCountries,
  ).reversed.toList();
  static final Random _random = .new();
  static Color randomColor() => .fromARGB(
    255,
    _random.nextInt(255),
    _random.nextInt(255),
    _random.nextInt(255),
  );
  static Container _containerGenerator({
    required double width,
    required double height,
    required String text,
  }) => Container(
    alignment: .center,
    width: width,
    height: height,
    color: randomColor(),
    child: Text(text, style: TextStyle(fontSize: 15, fontWeight: .bold)),
  );
}
