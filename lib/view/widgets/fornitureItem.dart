  import 'package:flutter/material.dart';
import 'package:furniture_store/module/forniture.dart';
  
  
  fornitureItem(Forniture item) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Image.asset(
                item.img1,
              ),
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'chair',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30,fontFamily: 'fo'),
                ),
                Text(
                  '50\$',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20,fontFamily: 'fo'),
                )
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Image.asset(
                item.img2,
              ),
            ),
            Spacer(),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'sofa',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 30,fontFamily: 'fo'),
                ),
                Text(
                  '100\$',
                  style: TextStyle(fontStyle: FontStyle.italic, fontSize: 20,fontFamily: 'fo'),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }