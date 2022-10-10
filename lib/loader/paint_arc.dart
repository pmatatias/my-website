import 'package:flutter/material.dart';
import 'dart:math';

class PaintArc extends CustomPainter {
  final double start;
  final double sweep;
  final Color color;

  PaintArc({required this.start, required this.sweep, this.color = Colors.cyan
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 12;
    paint1.strokeCap = StrokeCap.round;
    //draw arc
    canvas.drawArc(
        Rect.fromCircle(center: const Offset(0, 0), radius: 100),
        start * pi / 16, //radians
        sweep * pi / 16, //radians
        false,
        paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
