  import 'package:flutter/material.dart';
import 'package:furniture/module/forniture.dart';
  
  
  fornitureItem(Forniture item) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Image.network(
                item.img1,
              ),
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'chair',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                ),
                Text(
                  '50\$',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                )
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Image.network(
                item.img2,
              ),
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'sofa',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30),
                ),
                Text(
                  '100\$',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }