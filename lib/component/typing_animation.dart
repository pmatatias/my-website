import 'package:flutter/material.dart';

class TypingAnimation extends StatefulWidget {
  final String text;
  final bool repeat;
  final int duration;
  const TypingAnimation(
      {Key? key, this.text = '', this.repeat = false, this.duration = 1000})
      : super(key: key);

  @override
  State<TypingAnimation> createState() => _TypingAnimationState();
}

class _TypingAnimationState extends State<TypingAnimation>
    with TickerProviderStateMixin {
  late Animation<int> _charCount;
  late AnimationController controller;

  int _stringIndex = -1;
  static const List<String> _list = <String>[
    'pmtatias.dev',
    'Under development',
    '...'
  ];
  String get _currentString => widget.text;

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    controller = AnimationController(
      duration: Duration(milliseconds: widget.duration),
      vsync: this,
    );
    _stringIndex = _stringIndex + 1;
    _charCount = StepTween(begin: 0, end: _currentString.length)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeIn));

    await controller.forward();
    if (widget.repeat) controller.repeat(reverse: widget.repeat);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _charCount,
      builder: (context, child) => Text(
        _currentString.substring(0, _charCount.value),
        style: const TextStyle(
            color: Colors.green, fontWeight: FontWeight.w500, fontSize: 18),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
