import 'package:flutter/material.dart';
import 'package:hello_flutter/example/flatbutton_example.dart';

class Demo3 extends StatefulWidget {
  const Demo3({Key? key}) : super(key: key);

  @override
  _Demo3State createState() => _Demo3State();
}

class _Demo3State extends State<Demo3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            appBar: AppBar(title: Text('Button Demo')),
            body: Center(
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Tooltip(
                      //长按提示
                      message: '不要碰我，我怕痒',
                      child: Icon(Icons.all_inclusive),
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('按钮点击')),
                  Container(child: FlatButtonDemo())
                ],
              ),
            )));
  }
}
