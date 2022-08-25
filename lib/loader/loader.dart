import 'package:flutter/material.dart';
import 'package:portfolio_web/loader/paint_arc.dart';

class LoaderWidget extends StatefulWidget {
  final VoidCallback? ontap;
  final bool isRevese;
  const LoaderWidget({
    Key? key,
    this.ontap,
    this.isRevese = false,
  }) : super(key: key);

  @override
  State<LoaderWidget> createState() => _LoaderWidgetState();
}

class _LoaderWidgetState extends State<LoaderWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  // ignore: non_constant_identifier_names
  late Animation<double> _animation_rotation;
  // late Animation<double> animation_radius_in;
  // late Animation<double> animation_radius_out;
  // late Animation<double> animation_size = CurvedAnimation(
  //   parent: _controller,
  //   curve: Curves.fastLinearToSlowEaseIn,
  // );

  // final double initial_rad = 45;
  // double radius = 45.0;

  @override
  void initState() {
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation_rotation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: _controller,
            curve: const Interval(0.0, 1.0, curve: Curves.easeInOutSine)));
    // animation_radius_in = Tween<double>(begin: 1.0, end: 0.0).animate(
    //     CurvedAnimation(
    //         parent: _controller,
    //         curve: const Interval(0.75, 1.0, curve: Curves.elasticIn)));
    // animation_radius_out = Tween<double>(begin: 0.0, end: 1.0).animate(
    //     CurvedAnimation(
    //         parent: _controller,
    //         curve: const Interval(0.0, 0.25, curve: Curves.elasticOut)));

    // _controller.addListener(() {
    //   setState(() {
    //     if (_controller.value >= 0.75 && _controller.value <= 1.0) {
    //       radius = animation_radius_in.value * initial_rad;
    //     } else if (_controller.value >= 0.0 && _controller.value <= 0.25) {
    //       radius = animation_radius_out.value * initial_rad;
    //     }
    //   });
    // });
    _controller.repeat(reverse: false);

    super.initState();
  }

  void ontap(bool reve) {
    setState(() {
      _controller.repeat(reverse: reve);
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFE8CC9F),
      width: 200,
      height: 200,
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Container(
            //   width: 70,
            //   height: 70,
            //   decoration: const BoxDecoration(
            //       shape: BoxShape.circle, color: Colors.black),
            // ),
            SizedBox(
              width: 120,
              height: 120,
              child: Image.asset(
                'assets/me.png',
              ),
            ),

            RotationTransition(
              turns: _animation_rotation,
              child: buildRing(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRing() {
    return Stack(
      children: [
        CustomPaint(
          painter: PaintArc(start: 2, sweep: 5, color: Colors.teal),
        ),
        CustomPaint(
          painter: PaintArc(start: 18, sweep: 5, color: Colors.teal),
        ),
      ],
    );
  }
}
