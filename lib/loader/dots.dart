import 'package:flutter/material.dart';

class BuildDot extends StatelessWidget {
  final Color? color;
  final double radius;
  const BuildDot({Key? key, this.color, required this.radius})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: radius,
        height: radius,
        decoration: BoxDecoration(
            color: color ?? const Color(0xff3F72AF), shape: BoxShape.circle));
  }
}
