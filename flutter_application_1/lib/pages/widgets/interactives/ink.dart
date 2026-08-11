import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(body: SafeArea(child: const MyInkWidgets())),
  );
}

class MyInkWidgets extends StatefulWidget {
  const MyInkWidgets({super.key});

  @override
  State<MyInkWidgets> createState() => _MyInkWidgetsState();
}

class _MyInkWidgetsState extends State<MyInkWidgets> {
  int inkValue = 0;
  int inkImageValue = 0;
  int inkWellValue = 0;
  int inkResponseValue = 0;
  int counter = 0;
  @override
  Widget build(BuildContext context) => Center(
    child: Column(
      mainAxisAlignment: .center,
      spacing: 5.0,
      children: <Widget>[
        Ink(
          width: 100.0,
          height: 100.0,
          decoration: ShapeDecoration(
            color: Colors.amber[900],
            shape: CircleBorder(),
          ),
          child: IconButton(
            onPressed: () => setState(() {
              if (inkValue < 100) inkValue += 10;
            }),
            icon: Column(
              mainAxisAlignment: .center,
              children: <Widget>[
                const Icon(
                  Icons.volume_up_rounded,
                  color: Colors.black,
                  size: 50.0,
                ),
                const SizedBox(height: 5.0),
                Text("Volume: $inkValue"),
              ],
            ),
          ),
        ),
        Ink.image(
          width: 100.0,
          height: 100.0,
          fit: .fill,
          image: AssetImage("Assets/images/VanGogh-starry_night_ballance1.jpg"),
          child: IconButton(
            onPressed: () => setState(() {
              if (inkImageValue < 100) inkImageValue += 10;
            }),
            icon: Column(
              mainAxisAlignment: .center,
              children: <Widget>[
                const Icon(
                  Icons.volume_up_rounded,
                  color: Colors.white,
                  size: 50.0,
                ),
                const SizedBox(height: 5.0),
                Text(
                  "Volume: $inkImageValue",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        InkWell(
          canRequestFocus: false,
          customBorder: RoundedRectangleBorder(borderRadius: .circular(25.0)),
          highlightColor: Colors.purple,
          radius: 15.0,
          splashColor: Colors.teal,
          onTap: () => setState(() {
            if (inkWellValue < 100) inkWellValue += 10;
          }),
          child: Column(
            mainAxisAlignment: .center,
            children: <Widget>[
              const Icon(
                Icons.volume_up_rounded,
                color: Colors.black,
                size: 50.0,
              ),
              const SizedBox(height: 5.0),
              Text("Volume: $inkWellValue"),
            ],
          ),
        ),
        InkResponse(
          containedInkWell: true,
          borderRadius: .circular(15.0),
          highlightShape: .rectangle,
          onTap: () => setState(() {
            if (inkResponseValue < 100) inkResponseValue += 10;
          }),
          child: Column(
            mainAxisAlignment: .center,
            children: <Widget>[
              const Icon(
                Icons.volume_up_rounded,
                color: Colors.black,
                size: 50.0,
              ),
              const SizedBox(height: 5.0),
              Text("Volume: $inkResponseValue"),
            ],
          ),
        ),
        InkResponse(
          onTap: () => setState(() => counter++),
          onDoubleTap: () => setState(() => counter += 10),
          onLongPress: () => setState(() => counter += 25),
          child: Text(
            counter.toString(),
            style: TextStyle(
              color: Colors.red,
              fontSize: 30.0,
              fontWeight: .bold,
            ),
          ),
        ),
      ],
    ),
  );
}
