import 'package:flutter/material.dart';
import 'package:hello_flutter/examples/bar_chart_demo.dart';
import 'package:hello_flutter/examples/semicircular_canvas_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BarChartSample4(),
    );
  }
}
