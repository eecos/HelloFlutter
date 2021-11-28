import 'package:flutter/material.dart';
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
    return MaterialApp(
      home: CavnasDemoWidget(),
    );
  }
}

class CavnasDemoWidget extends StatelessWidget {
  const CavnasDemoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cavnas Demo'),
      ),
      body: Container(
        child: Center(
          child: Container(
            width: 250,
            height: 250,
            color: Colors.grey,
            child: SemicircularCanvasWidget(),
          ),
        ),
      ),
    );
  }
}
