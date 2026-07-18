import 'single_child_widgets_exports.dart';

void main(List<String> args) => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
    // showSemanticsDebugger: true,
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              const MyCustomContainer(),
              const MyConstrainedBox(),
              const MySizedBox(),
              const MyCustomFractionallySizedBox(),
              const MyLimitedBox(),
              const MyBoxDecoration(),
              const MyFittedBox(),
            ],
          ),
        ),
      ),
    ),
  );
}
