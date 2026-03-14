import 'package:flutter/material.dart';
import 'dart:ui';

void main() => runApp(
  MaterialApp(
    title: "Widgets",
    // debugShowCheckedModeBanner: false,
    // showPerformanceOverlay: true,
    // showSemanticsDebugger: true,
    theme: ThemeData(
      brightness: .light,
      // textTheme: TextTheme(
      //   bodyLarge: TextStyle(color: Colors.black, fontSize: 12),
      // ),
    ),
    home: Scaffold(
      appBar: MyAppBar(
        title: "Home",
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      drawer: MyDrawer(),
      bottomNavigationBar: MyNewBottomAppBar(),
      floatingActionButton: MyCustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      drawerScrimColor: Colors.red,
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Introduction to widgets",
                textDirection: .ltr,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight(500),
                  backgroundColor: Colors.yellow,
                ),
                softWrap: false,
                overflow: .ellipsis,
                textAlign: .justify,
              ),
              Text(
                "آشنایی با ویجت ها با فونت وزیر",
                textDirection: .rtl,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight(500),
                  backgroundColor: Colors.yellow,
                  fontFamily: "vazirmatn",
                ),
              ),
              Text(
                "آشنایی با ویجت ها با فونت ایران‌سنس",
                textDirection: .rtl,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight(500),
                  backgroundColor: Colors.yellow,
                  fontFamily: "iransans",
                ),
              ),
              Image.asset(
                "Assets/images/VanGogh-starry_night_ballance1.jpg",
                width: 313,
                height: 250,
                scale: 1.25,
                color: Colors.red,
                colorBlendMode: .multiply,
                filterQuality: .high,
                frameBuilder:
                    (
                      BuildContext context,
                      Widget child,
                      int? frame,
                      bool wasSynchronouslyLoaded,
                    ) => Container(
                      width: 350,
                      height: 250,
                      color: Colors.green,
                      child: child,
                    ),
                semanticLabel: "VanGogh Starry Night",
                excludeFromSemantics: false,
                isAntiAlias: true,
              ),
              Text(
                "Ullamco dolore aliqua consectetur ea ipsum culpa voluptate aliquip.",
                textDirection: .ltr,
                maxLines: 1,
                softWrap: false,
                overflow: .ellipsis,
                textAlign: .justify,
                style: TextStyle(
                  color: Colors.purpleAccent,
                  // backgroundColor: Colors.blueGrey,
                  background: Paint()
                    ..color = Colors.green
                    ..strokeWidth = 20
                    ..style = .stroke
                    ..strokeJoin = .round,
                  fontSize: 25,
                  fontWeight: FontWeight(500),
                  fontStyle: .italic,
                  letterSpacing: 5,
                  wordSpacing: 7,
                  decoration: .lineThrough,
                  decorationColor: Colors.red,
                  decorationThickness: 1.5,
                  decorationStyle: .wavy,
                  fontFeatures: <FontFeature>[FontFeature.liningFigures()],
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "1/2",
                  style: TextStyle(
                    fontFeatures: <FontFeature>[
                      FontFeature.tabularFigures(),
                      FontFeature.fractions(),
                      FontFeature.enable("smcp"),
                    ],
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: " Cup of",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: " Sugar"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ),
);

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color backgroundColor;
  final bool centerTitle;
  const MyAppBar({
    required this.title,
    required this.backgroundColor,
    required this.centerTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyle(fontWeight: FontWeight(750))),
      actions: const <Widget>[
        IconButton(
          onPressed: null,
          icon: Icon(Icons.account_circle),
          color: Colors.black,
          tooltip: "Account",
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.search),
          color: Colors.black,
          tooltip: "Search",
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.favorite),
          color: Colors.red,
          tooltip: "Favorite",
        ),
      ],
      centerTitle: centerTitle,
      elevation: 30,
      backgroundColor: backgroundColor,
      shadowColor: Colors.black,
      toolbarHeight: 75,
      // titleSpacing: 30,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(75);
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      shadowColor: Colors.black,
      child: ListView(
        children: const <Widget>[
          ListTile(
            title: Text("Settings", maxLines: 1),
            leading: Icon(Icons.settings, color: Colors.lightGreen),
            subtitle: Text(
              "This section is serve as a bottom to open settings",
              maxLines: 2,
              style: TextStyle(color: Colors.deepPurple),
            ),
            isThreeLine: true,
            minTileHeight: 100,
          ),
          ListTile(
            title: Text("Bug"),
            leading: Icon(Icons.bug_report),
            iconColor: Colors.red,
            textColor: Colors.yellow,
            tileColor: Colors.teal,
          ),
          ListTile(
            title: Text("About"),
            leading: Icon(Icons.info_outline_rounded, color: Colors.pink),
            enabled: false,
            horizontalTitleGap: 100,
          ),
        ],
      ),
    );
  }
}

class MyNewBottomAppBar extends StatelessWidget {
  const MyNewBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.blue,
      notchMargin: 12,
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.lock),
            color: Colors.orange,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.watch_later_rounded),
            color: Colors.indigo,
          ),
        ],
      ),
    );
  }
}

class MyCustomFloatingActionButton extends StatelessWidget {
  const MyCustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.green,
      hoverColor: Colors.grey,
      tooltip: "Just a test",
      child: const Icon(
        Icons.add,
        color: Colors.black,
        size: 28,
        semanticLabel: "Add",
      ),
    );
  }
}
