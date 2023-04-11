import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vector_math/vector_math.dart' as vector;
import 'dart:math' as math;

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> with TickerProviderStateMixin {
  late AnimationController _animationController;
  late AnimationController _animationController2;
  late AnimationController _animationController3;
  late Animation _animation;
  late Animation _animation2;
  List<Color> listColors=[Colors.red,Colors.pink,Colors.yellow,Colors.green];
  int currIndex=0;
  PageController ctr=PageController(viewportFraction: 0.7);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 10))
          ..repeat(reverse: true);
    _animationController2 =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
    _animation = Tween<double>(
      begin: 0.0,
      end: math.pi,
    ).animate(_animationController2);
    _animationController3 =
        AnimationController(vsync: this, duration: Duration(seconds: 5));
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
        title: ElevatedButton(child:Text('data') ,onPressed: () {
          ctr.nextPage(duration: Duration(seconds: 1), curve: Curves.decelerate);
        },),
        leading: ElevatedButton(
          child: Text('sad'),
          onPressed: () {
            startAnimation();
          },
        ),
      ),
      body: AnimatedBuilder(
        animation: _animationController,
        builder: (context, child) => Container(
          color: Colors.black,
          child: Center(
            child: LayoutBuilder(builder: (p0, p1) {
              double countainerSize = p1.maxWidth * 0.4;
              return Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: devicesize.height * 0.8,
                    width: devicesize.width * 0.6,
                    child: Stack(
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
                              angle: vector
                                  .radians(90 * (_animationController2.value)),
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
                                          listColors[currIndex],
                                          listColors[currIndex].withOpacity(0.5)
                                        ]),
                                    borderRadius: BorderRadius.circular(80)),
                              ),
                            ),
                          ),
                        ),
                        //----------------------------------------------------elements
                        /*AnimatedPositioned(
                              duration: Duration(seconds: 1),
                            left:start?0: (p1.maxWidth * 0.3)-(40*_animationController.value),
                            top:start?0: (lerpDouble(p1.maxHeight * 0.3, p1.maxHeight * 0.4,
                                _animationController.value)),
                            child: Container(
                              height: 50,
                              width: 50,
                              color: Colors.yellow,
                            )),
                             Positioned(
                            left:start?0: (p1.maxWidth * 0.3),
                            top:start?0: (lerpDouble(p1.maxHeight * 0.1, p1.maxHeight * 0.2,
                                _animationController.value)),
                            child: Container(
                              height: 50,
                              width: 50,
                              color: Colors.yellow,
                            )),
                             Positioned(
                            left:start?0: (p1.maxWidth * 0.2),
                            top:start?0: (lerpDouble(p1.maxHeight * 0.3, p1.maxHeight * 0.4,
                                _animationController.value)),
                            child: Container(
                              height: 50,
                              width: 50,
                              color: Colors.yellow,
                            )),*/
                        //.............................................................................
                      Positioned(child: PageView(
                        
                      ))

                      ],
                    ),
                  ),
                  Positioned(
                      left: 0 * (p1.maxWidth * 0.3) -
                          0 * (40 * _animationController.value),
                      top: p1.maxHeight * 0.3,
                      child: Transform.translate(
                        offset: Offset(
                          p1.maxWidth *
                              0.2 *
                              math.cos(_animation.value +
                                  _animationController.value),
                          p1.maxHeight *
                              0.3 *
                              math.sin(_animation.value +
                                  _animationController.value),
                        ),
                        child: Opacity(
                          opacity: 1,
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Color.fromARGB(255, 255, 0, 0),
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
                              math.cos(_animation.value +
                                  _animationController.value),
                          p1.maxHeight *
                              0.3 *
                              math.sin(_animation.value +
                                  _animationController.value),
                        ),
                        child: Opacity(
                          opacity: 1,
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Color.fromARGB(255, 255, 0, 0),
                          ),
                        ),
                      )),
                  Positioned(
                      left: 0,
                      top: p1.maxHeight * 0.3,
                      child: Transform.translate(
                        offset: Offset(
                          p1.maxWidth *
                              0.1 *
                              math.cos(_animation.value +
                                  _animationController.value),
                          p1.maxHeight *
                              0.3 *
                              math.sin(_animation.value +
                                  _animationController.value),
                        ),
                        child: Opacity(
                          opacity: 1,
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Color(0xFFFF0000),
                          ),
                        ),
                      )),
                  //.........................................................................
                  Positioned(
                      left: 0 * (p1.maxWidth * 0.3) -
                          0 * (40 * _animationController.value),
                      top: p1.maxHeight * 0.3,
                      child: Transform.translate(
                        offset: Offset(
                          p1.maxWidth *
                              0.2 *
                              math.cos(_animation2.value +
                                  _animationController.value),
                          p1.maxHeight *
                              0.3 *
                              math.sin(_animation2.value +
                                  _animationController.value),
                        ),
                        child: Opacity(
                          opacity:
                              1 + 0 * (_animationController2.value).toDouble(),
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Color.fromARGB(255, 0, 17, 255),
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
                              math.cos(_animation2.value +
                                  _animationController.value),
                          p1.maxHeight *
                              0.3 *
                              math.sin(_animation2.value +
                                  _animationController.value),
                        ),
                        child: Opacity(
                          opacity: 1,
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Color.fromARGB(255, 0, 17, 255),
                          ),
                        ),
                      )),
                  Positioned(
                      left: 0,
                      top: p1.maxHeight * 0.3,
                      child: Transform.translate(
                        offset: Offset(
                          p1.maxWidth *
                              0.1 *
                              math.cos(_animation2.value +
                                  _animationController.value),
                          p1.maxHeight *
                              0.3 *
                              math.sin(_animation2.value +
                                  _animationController.value),
                        ),
                        child: Opacity(
                          opacity: 1,
                          child: Container(
                            height: 50,
                            width: 50,
                            color: Color.fromARGB(255, 0, 17, 255),
                          ),
                        ),
                      )),
                      //.......................................................


                      Positioned(
                        bottom: 0,
                        right: 0,
                        height: p1.maxHeight*0.3,
                        width: p1.maxHeight*0.3,
                        child:PageView(
                          allowImplicitScrolling: true,
                          onPageChanged: (value) {
                            startAnimation();
                            setState(() {
                              currIndex=value;
                            });
                          },
                          controller: ctr,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color:listColors[0] ,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color:listColors[1] ,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color:listColors[2] ,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(color:listColors[3] ,),
                            ),

                          ],
                        ))
                ],
              );
            }),
          ),
        ),
      ),
    );
  }

  void startAnimation() {
    if (f) {
      _animationController2 = AnimationController(
          vsync: this, duration: Duration(seconds: 1));
      _animation = Tween<double>(
        begin: 0.0,
        end: math.pi,
      ).animate(_animationController2);
      _animationController3 = AnimationController(
          vsync: this, duration: Duration(seconds: 1));
      _animation2 = Tween<double>(
        begin: -1 * math.pi,
        end: 0,
      ).animate(_animationController2);
      _animationController2.forward();
      _animationController3.forward();
      f = !f;
    } else {
      _animationController2 = AnimationController(
          vsync: this, duration: Duration(seconds: 1));
      _animation = Tween<double>(
        begin: -1 * math.pi,
        end: 0,
      ).animate(_animationController2);
      _animationController2 = AnimationController(
          vsync: this, duration: Duration(seconds: 1));
      _animation = Tween<double>(
        begin: -1 * math.pi,
        end: 0,
      ).animate(_animationController2);
    
      _animationController3 = AnimationController(
          vsync: this, duration: Duration(seconds: 1));
      _animation2 = Tween<double>(
        begin: 0,
        end: math.pi,
      ).animate(_animationController3);
      _animationController2.forward();
      _animationController3.forward();
      f = !f;
    }
  }
}
