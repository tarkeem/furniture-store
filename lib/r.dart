/*import 'dart:math' as math;

import 'package:flutter/material.dart';

class CircularStackAnimation extends StatefulWidget {
  @override
  _CircularStackAnimationState createState() => _CircularStackAnimationState();
}

class _CircularStackAnimationState extends State<CircularStackAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
    _animation = Tween<double>(
      begin: 0.0,
      end:  math.pi,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 50,
          top: 50,
          child: Container(
            width: 50,
            height: 50,
            color: Colors.red,
          ),
        ),
        Positioned(
          left: 80,
          top: 80,
          child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                  200 * math.cos(_animation.value),
                  200 * math.sin(_animation.value),
                ),
                child: Transform.rotate(
                  angle:0,
                  child: child,
                ),
              );
            },
            child: Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}*/
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}