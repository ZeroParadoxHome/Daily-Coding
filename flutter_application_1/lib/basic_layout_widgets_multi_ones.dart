import 'package:flutter/material.dart';
import 'pages/widgets/multi_child_widgets/column_and_row.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    home: Scaffold(body: SafeArea(child: ColumnAndRow())),
  );
}
