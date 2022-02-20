import 'package:fast_food/widgets/texts.dart';
import 'package:flutter/material.dart';

InkWell textButton({text, ontap, color = Colors.green,double size = 15}) => InkWell(
    child: textnormal(text, color: color,size: size),
    onTap: ontap,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent);
