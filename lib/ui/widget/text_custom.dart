import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  String text;
  Color color;
  double size;
  TextAlign textAlign;
  FontWeight fontWeight;

  TextCustom({this.text, this.color, this.size=10.0, this.textAlign,this.fontWeight=FontWeight.bold});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
        Text(
          text,
          style: TextStyle(
              color: color,
              fontSize: size,
              fontWeight: fontWeight,
          ),
          textAlign: textAlign,
        )
    );
  }
}
