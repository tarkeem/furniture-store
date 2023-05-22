
import "package:flutter/material.dart";


class sphere extends StatelessWidget {
  double sphereSize;
  Color col;
  sphere(this.sphereSize, this.col);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: sphereSize,
      width: sphereSize,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [col, Colors.white],
              begin: Alignment.bottomRight,
              end: Alignment.topLeft),
          shape: BoxShape.circle),
    );
  }
}