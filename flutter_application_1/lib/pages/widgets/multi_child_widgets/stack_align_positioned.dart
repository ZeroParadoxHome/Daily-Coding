import 'package:flutter/material.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: .center,
          fit: .expand,
          textDirection: .ltr,
          children: <Widget>[
            Image.asset(
              "Assets/images/VanGogh-starry_night_ballance1.jpg",
              fit: .cover,
            ),
            Positioned.fill(
              bottom: 265,
              child: const ColoredBox(color: .fromARGB(128, 32, 32, 32)),
            ),
            Align(
              alignment: .bottomCenter,
              child: Container(
                alignment: .center,
                width: .infinity,
                height: 250,
                padding: .all(10),
                margin: .fromLTRB(15, 0, 15, 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: .all(color: Colors.black, strokeAlign: -1, width: 5),
                  borderRadius: .circular(25),
                ),
                child: Card(
                  margin: .all(0),
                  shape: RoundedRectangleBorder(borderRadius: .circular(15)),
                  elevation: 7.0,
                  shadowColor: Colors.red,
                  child: Padding(
                    padding: .all(10),
                    child: Column(
                      mainAxisAlignment: .spaceEvenly,
                      children: <Widget>[
                        const Text(
                          "ZeroParadoxHome",
                          textAlign: .center,
                          style: TextStyle(
                            fontWeight: .bold,
                            fontSize: 20,
                            height: 3,
                            letterSpacing: 3,
                          ),
                        ),
                        const Divider(),
                        const Text(
                          "Elit elit consequat fugiat non ea est. Dolore sint minim est enim. Quis adipisicing velit ea officia ullamco consequat adipisicing minim. Officia nisi nulla officia laborum fugiat non minim nulla Lorem aliqua eiusmod nisi voluptate nostrud. Velit eu mollit ex consectetur nulla dolor voluptate ipsum sunt cillum eu. Tempor elit pariatur tempor incididunt aute anim commodo sint culpa do dolore. Proident labore esse sunt eiusmod et ex cupidatat aliqua. Laborum magna cillum dolor sit irure sit excepteur magna consectetur reprehenderit excepteur magna proident tempor. Tempor ad anim magna consectetur magna ea. Est cillum sunt ex exercitation et dolor ad enim et sint pariatur magna.",
                          maxLines: 6,
                          softWrap: false,
                          overflow: .ellipsis,
                          textAlign: .justify,
                          style: TextStyle(
                            decoration: .underline,
                            decorationStyle: .solid,
                            decorationColor: Colors.red,
                            decorationThickness: 1.25,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
