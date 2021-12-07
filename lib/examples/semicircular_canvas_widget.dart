import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class SemicircularCanvasWidget extends StatefulWidget {
  const SemicircularCanvasWidget({Key? key, required this.value})
      : super(key: key);

  final double value;

  @override
  State<SemicircularCanvasWidget> createState() =>
      _SemicircularCanvasWidgetState();
}

class _SemicircularCanvasWidgetState extends State<SemicircularCanvasWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: MyPainter(value: widget.value),
    );
  }
}

class MyPainter extends CustomPainter {
  MyPainter({Key? key, required this.value});

  double value;

  @override
  void paint(Canvas canvas, Size size) {
    if (value > 180) {
      value = 180;
    }
    canvas.clipRect;
    Paint paint = Paint();
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 18;
    paint.color = Colors.grey;
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 1.6), radius: 140),
        -180 * (pi / 180),
        180 * (pi / 180),
        false,
        paint);
    paint.color = Colors.redAccent;
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 1.6), radius: 140),
        -180 * (pi / 180),
        value * (pi / 180),
        false,
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
