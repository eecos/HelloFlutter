import 'package:flutter/material.dart';

class AnimatedContainerDemoWidget extends StatefulWidget {
  const AnimatedContainerDemoWidget({Key? key}) : super(key: key);

  @override
  _AnimatedContainerDemoWidgetState createState() =>
      _AnimatedContainerDemoWidgetState();
}

class _AnimatedContainerDemoWidgetState
    extends State<AnimatedContainerDemoWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        alignment: Alignment.center,
        duration: const Duration(seconds: 2),
        child: Container(
          // color: Colors.pink,
          child: Text(
            "Jimi",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          width: 200,
          height: 200,
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            // borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Colors.red, Colors.blue]),
          ),
          transform: Matrix4.rotationZ(0.3),
          transformAlignment: Alignment.center,
        ),
      ),
    );
  }
}
