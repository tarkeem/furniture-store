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
import 'package:flutter/material.dart';
/*class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}*/











/*class WaterReflectionPainter extends CustomPainter {
  final ImageProvider image;

  WaterReflectionPainter(this.image);

  @override
  void paint(Canvas canvas, Size size) async {
    final Rect rect = Offset.zero & size;
    final ImageStream stream = image.resolve(ImageConfiguration.empty);
    final ui rawImage = await stream.image;
    final Paint paint = Paint()
      ..shader = ImageShader(
        rawImage,
        TileMode.repeated,
        TileMode.mirror,
        (Matrix4.identity().scaled(1.0, -1.0).translate(0.0, size.height)).storage,
      );
    final Rect clipRect = Rect.fromLTRB(0.0, size.height * 0.7, size.width, size.height);
    final Gradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Colors.transparent, Colors.black.withOpacity(0.5)],
    );
    final Paint maskPaint = Paint()
      ..shader = gradient.createShader(clipRect);

    canvas.saveLayer(rect, paint);
    canvas.drawRect(rect, paint);
    canvas.drawRect(clipRect, maskPaint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}



class WaterReflection extends StatelessWidget {
  final ImageProvider image;

  WaterReflection(this.image);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcOver,
      shaderCallback: (Rect bounds) {
        return WaterReflectionPainter(image);
      },
      child: Image(image: image),
    );
  }
}







class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: WaterReflection(NetworkImage('https://example.com/image.jpg')),
      ),
    );
  }
}*/