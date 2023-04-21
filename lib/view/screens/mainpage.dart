import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:furniture/module/forniture.dart';
import 'package:furniture/view/widgets/fornitureItem.dart';
import 'package:vector_math/vector_math.dart' as vector;
import 'dart:math' as math;

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> with TickerProviderStateMixin {
  late AnimationController _animationController1;
  late AnimationController _animationController2;
  late Animation<double> _animation1;
  late Animation<double> _animation2;
  List<Color> listColors = [
    Colors.purple,
    Colors.yellow,
    Colors.purple,
    Colors.yellow
  ];
  int currIndex = 0;
  PageController ctr = PageController(viewportFraction: 1);
  int firstSet = 0;
  int secondSet = 1;
  bool firstSetTern = true;
  PageController ctr2 = PageController(viewportFraction: 1);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController1 =
        AnimationController(vsync: this, duration: Duration(seconds: 20))
          ..repeat(reverse: true);
    _animationController2 =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _animation1 = Tween<double>(
      begin: 0.0,
      end: math.pi,
    ).animate(_animationController2);
    _animation2 = Tween<double>(
      begin: -1 * math.pi,
      end: 0,
    ).animate(_animationController2);
  }

  bool f = true;
  @override
  Widget build(BuildContext context) {
    var devicesize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: ElevatedButton(
          child: Text('data'),
          onPressed: () {
            ctr.nextPage(
                duration: Duration(seconds: 1), curve: Curves.decelerate);
            ctr2.nextPage(
                duration: Duration(seconds: 1), curve: Curves.decelerate);
          },
        ),
        leading: ElevatedButton(
          child: Text('sad'),
          onPressed: () {
            startAnimation();
          },
        ),
      ),
      body: AnimatedBuilder(
        animation: _animationController1,
        builder: (context, child) => Container(
          color: Colors.black,
          child: AnimatedBuilder(
            animation: _animationController2,
            builder: (context, child) => Center(
              child: LayoutBuilder(builder: (p0, p1) {
                double countainerSize = p1.maxWidth * 0.4;
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    insideBlock(devicesize, p1),
                    ...firstSetWid(p1),
                    ...secondSetWid(p1),
                    scrollSetWid(p1)
                  ],
                );
              }),
            ),
          ),
        ),
      ),
    );
  }

  Positioned scrollSetWid(BoxConstraints p1) {
    return Positioned(
        bottom: 0,
        right: 0,
        height: p1.maxHeight * 0.3,
        width: p1.maxHeight * 0.3,
        child: PageView.builder(
          itemCount: items.length,
          allowImplicitScrolling: true,
          onPageChanged: (value) {
            startAnimation();
            setState(() {
              currIndex = value;
            });
          },
          controller: ctr,
          itemBuilder: (context, index) => fornitureItem(items[index]),
        ));
  }

  List<Widget> secondSetWid(BoxConstraints p1) {
    return [
      Positioned(
          left: 0,
          top: p1.maxHeight * 0.3,
          child: Transform.translate(
            offset: Offset(
              p1.maxWidth *
                  0.1 *
                  math.cos(_animation2.value + _animationController1.value),
              p1.maxHeight *
                  0.3 *
                  math.sin(_animation2.value + _animationController1.value),
            ),
            child: Opacity(
              opacity: _animation1.value.abs() / math.pi,
              child: Container(
                height: 100,
                width: 100,
                child: Image.network(items[secondSet].img3),
              ),
            ),
          )),
      Positioned(
          left:
              0 * (p1.maxWidth * 0.3) - 0 * (40 * _animationController1.value),
          top: 0,
          child: Transform.translate(
            offset: Offset(
              p1.maxWidth *
                  0.2 *
                  math.cos(_animation2.value + _animationController1.value),
              p1.maxHeight *
                  0.3 *
                  math.sin(_animation2.value + _animationController1.value),
            ),
            child: Opacity(
              opacity: _animation1.value.abs() / math.pi,
              child: Container(
                height: 200,
                width: 200,
                child: Image.network(items[secondSet].img1),
              ),
            ),
          )),
      Positioned(
          left: -100,
          top: p1.maxHeight * 0.1,
          child: Transform.translate(
            offset: Offset(
              p1.maxWidth *
                  0.1 *
                  math.cos(_animation2.value + _animationController1.value),
              p1.maxHeight *
                  0.3 *
                  math.sin(_animation2.value + _animationController1.value),
            ),
            child: Opacity(
              opacity: _animation1.value.abs() / math.pi,
              child: Container(
                height: 200,
                width: 200,
                child: Image.network(items[secondSet].img2),
              ),
            ),
          ))
    ];
  }

  List<Widget> firstSetWid(BoxConstraints p1) {
    return [
      Positioned(
          left: 0,
          top: p1.maxHeight * 0.3,
          child: Transform.translate(
            offset: Offset(
              p1.maxWidth *
                  0.1 *
                  math.cos(_animation1.value + _animationController1.value * 4),
              p1.maxHeight *
                  0.3 *
                  math.sin(_animation1.value + _animationController1.value),
            ),
            child: AnimatedBuilder(
              animation: _animation1,
              builder: (context, child) => Opacity(
                opacity: 1 - _animation1.value.abs() / math.pi,
                child: Container(
                  height: 100,
                  width: 100,
                  child: Image.network(
                    items[firstSet].img3,
                  ),
                ),
              ),
            ),
          )),
      Positioned(
          left: 0,
          top: p1.maxHeight * 0.1,
          child: Transform.translate(
            offset: Offset(
              p1.maxWidth *
                  0.1 *
                  math.cos(_animation1.value + _animationController1.value),
              p1.maxHeight *
                  0.4 *
                  math.sin(_animation1.value + _animationController1.value),
            ),
            child: Opacity(
              opacity: 1 - _animation1.value.abs() / math.pi,
              child: Container(
                height: 200,
                width: 200,
                child: Image.network('assets/sphere_3d_shape (1).png'),
              ),
            ),
          )),
      Positioned(
          left: 0,
          top: p1.maxHeight * 0.3,
          child: Transform.translate(
            offset: Offset(
              p1.maxWidth *
                  0.2 *
                  math.cos(_animation1.value + _animationController1.value),
              p1.maxHeight *
                  0.3 *
                  math.sin(_animation1.value + _animationController1.value),
            ),
            child: Opacity(
              opacity: 1 - _animation1.value.abs() / math.pi,
              child: Container(
                height: 200,
                width: 200,
                child: Image.network(items[firstSet].img1),
              ),
            ),
          )),
      Positioned(
          left: 0,
          top: p1.maxHeight * 0.1,
          child: Transform.translate(
            offset: Offset(
              p1.maxWidth *
                  0.1 *
                  math.cos(_animation1.value + _animationController1.value),
              p1.maxHeight *
                  0.3 *
                  math.sin(_animation1.value + _animationController1.value),
            ),
            child: Opacity(
              opacity: 1 - _animation1.value.abs() / math.pi,
              child: Container(
                height: 200,
                width: 200,
                child: Image.network(items[firstSet].img2),
              ),
            ),
          ))
    ];
  }

  Container insideBlock(Size devicesize, BoxConstraints p1) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      height: devicesize.height * 0.8,
      width: devicesize.width * 0.6,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        fit: StackFit.expand,
        children: [
          Positioned(
            left: -(p1.maxWidth * 0.4) * 0.2,
            top: 0,
            child: Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateY(vector.radians(-35)),
              alignment: Alignment.centerRight,
              child: Transform.rotate(
                angle: vector.radians(90 * (_animationController2.value)),
                alignment: Alignment.center,
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: p1.maxWidth * 0.4,
                  width: p1.maxWidth * 0.4,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            items[currIndex].col,
                            items[currIndex].col.withOpacity(0.5)
                          ]),
                      borderRadius: BorderRadius.circular(80)),
                ),
              ),
            ),
          ),

          Positioned(
            top: p1.maxWidth * 0.15,
            left: p1.maxWidth * 0.09,
            width: p1.maxWidth * 0.2,
            height: p1.maxWidth * 0.1,
            child: Container(
              color: Colors.transparent,
              child: PageView.builder(
                itemCount: items.length,
                controller: ctr2,
                itemBuilder: (context, index) {
                  return Text(
                    'BRAND $index',
                    style:
                        TextStyle(fontSize: 40, fontFamily: 'BloodySunday'),
                  );
                },
              ),
            ),
          ),

          //.............................................................................
        ],
      ),
    );
  }

  void startAnimation() {
    if (f) {
      print('forward');
      _animationController2 = AnimationController(
          vsync: this, duration: Duration(milliseconds: 1000));

      _animation1 = Tween<double>(
        begin: 0.0,
        end: math.pi,
      ).animate(_animationController2);

      _animation2 = Tween<double>(
        begin: -1 * math.pi,
        end: 0,
      ).animate(_animationController2);

      _animationController2.forward().then((value) {
        if (firstSetTern) {
          firstSet += 2;
          firstSetTern = false;
        } else {
          if (secondSet == items.length - 2) {
            secondSet = 0;
          } else {
            secondSet += 2;
            firstSetTern = true;
          }
        }
      });

      f = !f;
    } else {
      print('reverse');
      _animationController2 = AnimationController(
          vsync: this, duration: Duration(milliseconds: 1000));

      _animation2 = Tween<double>(
        begin: 0.0,
        end: math.pi,
      ).animate(_animationController2);

      _animation1 = Tween<double>(
        begin: -1 * math.pi,
        end: 0,
      ).animate(_animationController2);
      _animationController2.forward().then((value) {
        if (firstSetTern) {
          firstSet += 2;
          firstSetTern = false;
        } else {
          if (secondSet == items.length - 2) {
            secondSet = 0;
          } else {
            secondSet += 2;
            firstSetTern = true;
          }
        }
      });

      f = !f;
    }
  }
}
