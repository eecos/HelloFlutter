import 'package:flutter/material.dart';
import 'package:hello_flutter/example/demo1.dart';
import 'package:hello_flutter/example/official_example.dart';

void main() {
  runApp(const RunMyApp());
}

class RunMyApp extends StatefulWidget {
  const RunMyApp({Key? key}) : super(key: key);

  @override
  _RunMyAppState createState() => _RunMyAppState();
}

class _RunMyAppState extends State<RunMyApp> {
  @override
  Widget build(BuildContext context) {
   /// return const MyApp();
   return Demo1()
  }
}
