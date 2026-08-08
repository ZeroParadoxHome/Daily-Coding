import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(body: SafeArea(child: const SwitchAndCheckbox())),
  );
}

class SwitchAndCheckbox extends StatefulWidget {
  const SwitchAndCheckbox({super.key});

  @override
  State<SwitchAndCheckbox> createState() => _SwitchAndCheckboxState();
}

class _SwitchAndCheckboxState extends State<SwitchAndCheckbox> {
  bool isSwitched = false;
  bool isSwitchedListTile = false;
  bool? isBoxChecked;
  bool isMonday = false;
  bool isWeekend = false;
  bool isWeekday = false;
  bool isNewYear = false;
  Map<String, bool> weekdaysValues = <String, bool>{
    "Mon": false,
    "Tue": false,
    "Wed": false,
    "Thu": false,
    "Fri": false,
    "Sat": false,
    "Sun": false,
  };
  Color? get switchedListTileIconColor =>
      isSwitchedListTile ? Colors.green : Colors.redAccent[400];
  Widget dailyCheckbox({required String dayTitle}) => Column(
    children: <Widget>[
      Checkbox(
        value: weekdaysValues[dayTitle],
        onChanged: (bool? newValue) =>
            setState(() => weekdaysValues[dayTitle] = newValue!),
      ),
      Text(dayTitle),
    ],
  );
  @override
  Widget build(BuildContext context) => Center(
    child: Column(
      children: <Widget>[
        Switch(
          value: isSwitched,
          onChanged: (bool newValue) => setState(() => isSwitched = newValue),
          activeThumbColor: Colors.yellow[700],
          activeThumbImage: AssetImage("Assets/images/sun.jpg"),
          activeTrackColor: Colors.yellowAccent[700],
          inactiveThumbColor: Colors.blueGrey[700],
          inactiveThumbImage: AssetImage("Assets/images/moon.jpg"),
          inactiveTrackColor: Colors.blueGrey[300],
          splashRadius: 15.0,
        ),
        Padding(
          padding: const .symmetric(horizontal: 9.0),
          child: SwitchListTile(
            title: const Text("Turn ON/OFF"),
            activeThumbColor: Colors.green,
            inactiveThumbColor: Colors.redAccent[400],
            secondary: Icon(
              Icons.power_settings_new_rounded,
              color: switchedListTileIconColor,
              size: 30.0,
            ),
            subtitle: const Text("Use to turn device on or off"),
            contentPadding: .symmetric(horizontal: 20.0),
            horizontalTitleGap: 15.0,
            minVerticalPadding: 15,
            tileColor: Colors.blue[100],
            shape: RoundedRectangleBorder(borderRadius: .circular(50.0)),
            visualDensity: VisualDensity(horizontal: 3, vertical: 0.1),
            value: isSwitchedListTile,
            onChanged: (bool newValue) =>
                setState(() => isSwitchedListTile = newValue),
          ),
        ),
        Checkbox(
          isError: true,
          activeColor: Colors.green,
          checkColor: Colors.red,
          shape: RoundedRectangleBorder(borderRadius: .circular(6.0)),
          side: BorderSide(color: Colors.blue, width: 2.5, strokeAlign: 0.75),
          tristate: true,
          value: isBoxChecked,
          onChanged: (bool? newValue) =>
              setState(() => isBoxChecked = newValue),
        ),
        CheckboxListTile(
          enabled: true,
          title: const Text("Monday"),
          activeColor: Colors.deepPurple[900],
          controlAffinity: .leading,
          dense: true,
          selected: true,
          selectedTileColor: Colors.lime,
          shape: RoundedRectangleBorder(borderRadius: .circular(50.0)),
          minLeadingWidth: 50.0,
          minTileHeight: 55,
          minVerticalPadding: 25,
          checkboxShape: RoundedRectangleBorder(borderRadius: .circular(9.0)),
          checkboxScaleFactor: 1.5,
          titleAlignment: .center,
          value: timeDilation != 1.0,
          onChanged: (bool? newValue) =>
              setState(() => timeDilation = newValue! ? 15.0 : 1.0),
        ),
        Row(
          mainAxisAlignment: .end,
          children: <Widget>[
            const Text("Weekend"),
            Checkbox(
              value: isWeekend,
              onChanged: (bool? newValue) =>
                  setState(() => isWeekend = newValue!),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: .end,
          children: <Widget>[
            const Text("Weekday"),
            Checkbox(
              value: isWeekday,
              onChanged: (bool? newValue) =>
                  setState(() => isWeekday = newValue!),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: .end,
          children: <Widget>[
            const Text("A NewYear"),
            Checkbox(
              value: isNewYear,
              onChanged: (bool? newValue) =>
                  setState(() => isNewYear = newValue!),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: .center,
          children: <Widget>[
            dailyCheckbox(dayTitle: "Mon"),
            dailyCheckbox(dayTitle: "Tue"),
            dailyCheckbox(dayTitle: "Wed"),
            dailyCheckbox(dayTitle: "Thu"),
            dailyCheckbox(dayTitle: "Fri"),
            dailyCheckbox(dayTitle: "Sat"),
            dailyCheckbox(dayTitle: "Sun"),
          ],
        ),
      ],
    ),
  );
}
