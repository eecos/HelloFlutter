import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

class SemicircularCanvasWidget extends StatelessWidget {
  const SemicircularCanvasWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: MyPainter(),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.strokeWidth = 18;
    paint.color = Colors.grey.withOpacity(0.2);
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 140),
        -180 * (pi / 180),
        180 * (pi / 180),
        false,
        paint);
    paint.style = PaintingStyle.stroke;
    paint.strokeCap = StrokeCap.round;
    paint.color = Colors.redAccent.withOpacity(0.8);
    paint.strokeWidth = 18;
    canvas.drawArc(
        Rect.fromCircle(
            center: Offset(size.width / 2, size.height / 2), radius: 140),
        -180 * (pi / 180),
        120 * (pi / 180),
        false,
        paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
