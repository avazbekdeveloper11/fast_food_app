import 'package:fast_food/constant/sizeConfig.dart';
import 'package:flutter/material.dart';

Text textBold(text, {double size = 14, Color color = Colors.black}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
        fontSize: getW(size), color: color, fontWeight: FontWeight.bold),
  );
}

Text textnormal(text, {double size = 14, Color color = Colors.black}) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(fontSize: getW(size), color: color),
  );
}
