import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class Forniture {
  String img1, img2;
  Color col;
  Forniture(this.col, this.img1, this.img2);
}

List<Forniture> items = [
  Forniture(
    Colors.purple,
    'assets/pc.png',
    'assets/ps.png'
    
  ),
  Forniture(
      Colors.yellow,
       'assets/yc.png',
        'assets/ys.png'
      ),
  Forniture(
      Color.fromARGB(255, 226, 38, 38),
       'assets/rc.png',
        'assets/rs.png'
      ),
       Forniture(
      Color.fromARGB(255, 41, 37, 37),
       'assets/bc.png',
    'assets/bs.png'
      ),
      Forniture(
      Color.fromARGB(255, 41, 37, 37),
       'assets/bc.png',
    'assets/bs.png'
      ),
      
       
];
