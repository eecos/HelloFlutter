import 'package:flutter/material.dart';

void main() {
  runApp(const RunMyApp());
}

class RunMyApp extends StatefulWidget {
  const RunMyApp({Key? key}) : super(key: key);

  @override
  _RunMyAppState createState() => _RunMyAppState();
}

class _RunMyAppState extends State<RunMyApp> {
  var _isStr1 = 'Container';

  var _str;
  double _width = 300.0;
  double _height = 200.0;

  bool _isAdd = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (_str == null) {
      _str = _isStr1;
    }
  }

  @override
  Widget build(BuildContext context) {
    /// return const MyApp();
    return MaterialApp(
      title: 'demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('动画Demo'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _updateStatus,
          child: Icon(Icons.add_sharp),
        ),
        body: Center(
          child: AnimatedContainer(
            width: _width,
            height: _height,
            color: _isAdd ? Colors.lightBlue : Colors.green,
            duration: Duration(seconds: 1),
            child: Center(
              child: Text(
                '$_str',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _updateStatus() {
    setState(() {
      _str = '''
      width  == $_width
      height == $_height
      ''';
      if (_width == 320) {
        _isAdd = !_isAdd;
      } else if (_width == 299) {
        _isAdd = !_isAdd;
      }
      _isAdd ? _width++ : _width--;
    });
  }
}
